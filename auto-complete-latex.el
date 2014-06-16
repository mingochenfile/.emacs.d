;;; auto-complete-latex.el --- A LaTeX extention for auto-complete-mode

;; Copyright (C) 2010 tequilasunset

;; Author:   tequilasunset <tequilasunset.mac@gmail.com>
;; Keywords: LaTeX
;; Version:  0.2.4

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;

;;; Requirements:

;;   auto-complete-mode:
;;
;;     http://cx4a.org/software/auto-complete/
;;

;;; Installation:

;;  - Put files into your load-path, and add the following into your
;;    .emacs.
;;
;;      (require 'auto-complete-latex)
;;      (setq ac-l-dict-directory "/path/to/ac-l-dict/")
;;      (add-to-list 'ac-modes 'foo-mode)
;;      (add-hook 'foo-mode-hook 'ac-l-setup)
;;
;;  - If you get the error below
;;
;;      `variable binding depth exceeds max-specpdl-size',
;;
;;    add the following into your .emacs.
;;
;;      (setq max-specpdl-size (+ 500 max-specpdl-size))
;;
;;  - If you byte-compile this file to load faster, ignore the
;;    warning about cl package (`cl package required at runtime').
;;

;;; Commentary:

;;  - User customizable variables:
;;
;;    You can set up all user variables with using customize group.
;;
;;      M-x customize-group RET auto-complete-latex RET
;;
;;  - Don't use ac-sources:
;;
;;    `ac-sources' is not available with this extension because
;;    Auto Complete LaTeX redefines ac-sources. Even though you
;;    set ac-sources, it will be ignored. Use `ac-l-sources'
;;    instead.
;;
;;  - Configurations:
;;
;;    Below are some examples for configurations.
;;
;;      * Setup for AUCTeX
;;
;;          (when (require 'auto-complete-latex nil t)
;;            (setq ac-l-dict-directory "~/.emacs.d/ac-l-dict/")
;;            (add-to-list 'ac-modes 'latex-mode)
;;            (add-hook 'LaTeX-mode-hook 'ac-l-setup))
;;
;;      * Setup for YaTeX
;;
;;          (when (require 'auto-complete-latex nil t)
;;            (setq ac-l-dict-directory "~/.emacs.d/ac-l-dict/")
;;            (add-to-list 'ac-modes 'yatex-mode)
;;            (add-hook 'yatex-mode-hook 'ac-l-setup))
;;
;;        If you want to use command help in Japanese, Put
;;        YATEXHLP.jp into ac-l-dict.
;;
;;      * Use ac-source-yasnippet as omni completion
;;
;;        If you only want to use a snippet, add the source into
;;        ac-l-sources simply.
;;        Below code is an example to add prefix property.
;;
;;          (defun my-ac-yas-action ()
;;            (let ((p (point)))
;;              (yas/expand)
;;              (save-excursion
;;                (goto-char p)
;;                (when (re-search-backward "\\(\\\\\\)[a-zA-Z@]+\\=" nil t)
;;                  (replace-match "" nil nil nil 1)))))
;;
;;          (defvar my-ac-source-yasnippet
;;            (let ((source (copy-alist ac-source-yasnippet)))
;;              (delete (assq 'symbol source) source)
;;              (delete (assq 'action source) source)
;;              (add-to-list 'source '(symbol . "Y"))
;;              (add-to-list 'source '(action . my-ac-yas-action))
;;              (add-to-list 'source (cons 'prefix ac-l-command-prefix))))
;;
;;          (add-to-list 'ac-l-sources 'my-ac-source-yasnippet)
;;
;;        Suppose that the snippet begins at `\foo' and its name
;;        is foo. It will be expanded when you complete `\foo'
;;        with typing RET. The function my-ac-yas-action is a trick
;;        to delete extra backslash.
;;
;;  - ac-l-dict:
;;
;;    The ac-l-dict is a directory. Files in it will become sources,
;;    candidates, or help contents after `ac-l-setup' is evaluated.
;;    Files are classified like below. If there are needless files,
;;    delete it.
;;
;;      1. Basic files
;;
;;           basic-command
;;           basic-argument
;;           macro
;;           latex-dot-ltx
;;           platex-command   (for Japanese)
;;           platex-argument  (for Japanese)
;;           primitives
;;           ptex-primitives  (for Japanese)
;;
;;         Keywords in these files will become candidates for the
;;         sources `ac-l-source-latex-commands' and
;;         `ac-l-source-latex-arguments'.
;;
;;      2. User files
;;
;;           user-command
;;           user-argument
;;
;;         these files will become the sources `ac-l-source-user-commands'
;;         and `ac-l-source-user-arguments'. If you want to add
;;         candidates for normal words (neither commands nor arguments),
;;         use `ac-user-dictionary' or `ac-user-dictionary-files'.
;;
;;      3. Help file
;;
;;           latex-help
;;
;;         this file will become a LaTeX command help.
;;
;;         Note: This file is a short document of latex2e.txt. I
;;               modified it for this extension. It is distributed as
;;               a project. If you are interested in it, please go to
;;               the project home page.
;;
;;               latexrefman project: http://home.gna.org/latexrefman
;;
;;      4. External package files
;;
;;           Files other than above will become package sources. the
;;           form is NAME-TYPE-SYMBOL-REQUIRES.
;;
;;           * NAME
;;             Package or class file name.
;;             For example, if you set NAME to foo, the source that
;;             name is ac-l-source-foo-TYPE is generated. And it is
;;             included in `ac-sources' while \usepackage{foo},
;;             \RequirePackage{foo} or \documentclass{foo} is written
;;             in document.
;;             In addition, you can set package dependence with using
;;             `ac-l-package-dependences'.
;;
;;           * TYPE
;;             `c' (command) or `a' (argument). This is related to
;;             prefix property.
;;
;;           * SYMBOL
;;             Symbol property. `*' => `p'.
;;
;;           * REQUIRES
;;             Requires property. `*' => not set.
;;
;;  - Commands that argument completion will work:
;;
;;    You can set the commands involved with argument. Here is a
;;    list of related variables.
;;
;;      `ac-l-argument-regexps'
;;      `ac-l-file-regexps'
;;      `ac-l-label-regexps'
;;      `ac-l-bib-regexps'
;;
;;    For example, if you want to complete label names in argument
;;    of `\foo', write the following into your .emacs.
;;
;;      (add-to-list 'ac-l-label-regexps "foo")
;;
;;  - Prefix properties:
;;
;;    Five prefix properties are defined in this extension.
;;
;;      ac-l-argument       (symbol)
;;      ac-l-file           (symbol)
;;      ac-l-label          (symbol)
;;      ac-l-bib            (symbol)
;;      ac-l-command-prefix (regexp)
;;
;;    The usage of these prefix is below.
;;
;;      Symbol:
;;
;;        (add-to-list 'foo-source '(prefix . ac-l-argument))
;;
;;      Regexp:
;;
;;        (add-to-list 'foo-source `(prefix . ,ac-l-command-prefix))
;;
;;        or
;;
;;        (add-to-list 'foo-source (cons 'prefix ac-l-command-prefix))
;;
;;  - Completion at point:
;;
;;    You can use two commands `ac-l-complete-labels' and
;;    `ac-l-complete-bibs' to complete at point. These commands ignore
;;    prefix property, so you can start completion everywhere.
;;
;;  - A table of symbol properties:
;;
;;       SYMBOL |           MEANING
;;      --------+-------------------------------
;;         l    | LaTeX and pLaTeX
;;         a    | AMS packages
;;         b    | beamer
;;         h    | hyperlinks
;;         g    | graphics
;;         m    | math sign or equations
;;         c    | colors
;;         t    | tables
;;         f    | fonts
;;         p    | unclassified external packages
;;         F    | file names in a current directory
;;         L    | label names
;;         B    | bib keys
;;         u    | keywords added into user-command or user-argument
;;
;;    You don't have to remember these symbols because Auto Complete
;;    LaTeX selects proper candidates suitable for the situation.
;;    Moreover you can change these symbols as you like.
;;
;;  - Startup improvement:
;;
;;    In case you use `ac-l-master-file', `ac-l-package-files' or
;;    `ac-l-bib-files', startup will be slower because this extension
;;    collects candidates all at once at startup. If you are using
;;    ac-l-package-files, you can improve it with using the command
;;    `ac-l-write-package-files'. This command writes package files
;;    that contain candidates collected at startup. You can use those
;;    files in ac-l-dict. Loading of files in ac-l-dict is faster than
;;    loading of ac-l-package-files.
;;

;;; History:

;;   http://bitbucket.org/tequilasunset/auto-complete-latex/history/auto-complete-latex.el

;;; Code:

(require 'cl)
(require 'auto-complete)

(defgroup auto-complete-latex nil
  "Auto completion of LaTeX keywords."
  :group 'auto-complete
  :group 'tex
  :prefix "ac-l-")


;;;; variables
(defcustom ac-l-update-delay 0.8
  "Delay to update candidates."
  :type 'float
  :group 'auto-complete-latex)

(defcustom ac-l-master-file nil
  "Specify LaTeX master file path as string.
If valid file path is specified, parse master file's \\input and
\\include, and create candidates from master file and parsed files."
  :type 'string
  :group 'auto-complete-latex)
(defvaralias 'ac-l-target 'ac-l-master-file)

(defcustom ac-l-sources nil
  "A list of user sources.
If you want to add sources defined in other elisp, use this list
instead of `ac-sources'. Notice that you don't have to use
`add-hook'.

Here is a list of sources defined in auto-complete.el and included
in Auto Complete LaTeX by default. You don't need to add these
sources into ac-l-sources.

   * ac-source-dictionary
   * ac-source-files-in-current-dir
   * ac-source-filename
   * ac-source-words-in-buffer
   * ac-source-words-in-same-mode-buffers
   * ac-source-words-in-all-buffer"
  :type '(repeat symbol)
  :group 'auto-complete-latex)

(defcustom ac-l-package-files nil
  "A list of package files (valid suffixes are .sty and .cls).
If valid file path is specified, parse LaTeX command definitions
in it, and create candidates."
  :type '(repeat string)
  :group 'auto-complete-latex)

(defcustom ac-l-bib-files nil
  "A list of bib files (valid suffix is .bib).
If valid file path is specified, parse bibliography keys in it,
and create candidates."
  :type '(repeat string)
  :group 'auto-complete-latex)

(defcustom ac-l-use-word-completion nil
  "If non-nil, use sources for normal word completion."
  :type 'boolean
  :group 'auto-complete-latex)

;;; internal
(defconst ac-l-command-prefix "\\\\\\([a-zA-Z@]+\\)"
  "Prefix property of sources for LaTeX commands.")

(defvar ac-l-major-mode nil
  "Major mode which Auto Complete LaTeX is working.")

(defvar ac-l-update-timer nil
  "Timer for `ac-l-update-all'.")

(defconst ac-l-packages (make-hash-table :test 'equal)
  "Hash table. k -> package name in `ac-l-package-files', v -> [cmds args]")


;;;; functions

(defsubst ac-l-master-p ()
  "Return non-nil, if `ac-l-master-file' is valid. If not, return nil."
  (if (and (stringp ac-l-master-file)
           (file-exists-p ac-l-master-file))
      t))

(defmacro ac-l-pushnew-1 (x place)
  "Work like (pushnew x place :test 'eq)"
  `(if (memq ,x ,place) ,place (setq ,place (cons ,x ,place))))

(defmacro ac-l-pushnew-2 (x place)
  "Work like (pushnew x place :test 'equal)"
  `(if (member ,x ,place) ,place (setq ,place (cons ,x ,place))))

;;; define internal vector and accessors
;;; cannot use these accessors with `setf'
(defconst ac-l--dummy (make-vector 16 nil))

(defsubst ac-l-get-package-commands      () (aref ac-l--dummy 0))
(defsubst ac-l-get-package-arguments     () (aref ac-l--dummy 1))
(defsubst ac-l-get-current-bib-tables    () (aref ac-l--dummy 2))
(defsubst ac-l-get-all-bib-tables        () (aref ac-l--dummy 3))
(defsubst ac-l-get-latex-commands        () (aref ac-l--dummy 4))
(defsubst ac-l-get-latex-arguments       () (aref ac-l--dummy 5))
(defsubst ac-l-get-package-sources       () (aref ac-l--dummy 6))
(defsubst ac-l-get-user-noprefix-sources () (aref ac-l--dummy 7))
(defsubst ac-l-get-user-prefix-sources   () (aref ac-l--dummy 8))
(defsubst ac-l-get-label-cands           () (aref ac-l--dummy 9))
(defsubst ac-l-get-bibitem-cands         () (aref ac-l--dummy 10))
(defsubst ac-l-get-bib-cands             () (aref ac-l--dummy 11))
(defsubst ac-l-get-buffer-sources        () (aref ac-l--dummy 12))
(defsubst ac-l-get-filenames             () (aref ac-l--dummy 13))
(defsubst ac-l-get-label-tables          () (aref ac-l--dummy 14))
(defsubst ac-l-get-bibitem-tables        () (aref ac-l--dummy 15))

(defsubst ac-l-set-package-commands      (newelt) (aset ac-l--dummy 0 newelt))
(defsubst ac-l-set-package-arguments     (newelt) (aset ac-l--dummy 1 newelt))
(defsubst ac-l-set-current-bib-tables    (newelt) (aset ac-l--dummy 2 newelt))
(defsubst ac-l-set-all-bib-tables        (newelt) (aset ac-l--dummy 3 newelt))
(defsubst ac-l-set-latex-commands        (newelt) (aset ac-l--dummy 4 newelt))
(defsubst ac-l-set-latex-arguments       (newelt) (aset ac-l--dummy 5 newelt))
(defsubst ac-l-set-package-sources       (newelt) (aset ac-l--dummy 6 newelt))
(defsubst ac-l-set-user-noprefix-sources (newelt) (aset ac-l--dummy 7 newelt))
(defsubst ac-l-set-user-prefix-sources   (newelt) (aset ac-l--dummy 8 newelt))
(defsubst ac-l-set-label-cands           (newelt) (aset ac-l--dummy 9 newelt))
(defsubst ac-l-set-bibitem-cands         (newelt) (aset ac-l--dummy 10 newelt))
(defsubst ac-l-set-bib-cands             (newelt) (aset ac-l--dummy 11 newelt))
(defsubst ac-l-set-buffer-sources        (newelt) (aset ac-l--dummy 12 newelt))
(defsubst ac-l-set-filenames             (newelt) (aset ac-l--dummy 13 newelt))
(defsubst ac-l-set-label-tables          (newelt) (aset ac-l--dummy 14 newelt))
(defsubst ac-l-set-bibitem-tables        (newelt) (aset ac-l--dummy 15 newelt))

;;; prefix properties
(defcustom ac-l-argument-regexps
  '("usepackage"
    "RequirePackage"
    "documentclass"
    "begin"
    "end"
    "\\(?:this\\)?pagestyle"
    "bibliography\\(?:style\\)?"
    "pagenumbering"
    "\\(?:new\\|addto\\|set\\)counter"
    "[aA]lph"
    "arabic"
    "[rR]oman"
    "fnsymbol"
    "addcontentsline"
    "@addtoreset"
    "@startsection"
    "@namedef"
    "@definecounter"
    ;; amsmath
    "numberwithin"
    ;; color
    "\\(?:text\\|page\\|f\\|define\\)color"
    "colorbox"
    ;; colortbl
    "\\(?:column\\|row\\|cell\\|arrayrule\\|doublerulesep\\)color"
    ;; hyperref
    "hypersetup"
    ;; graphicx
    "includegraphics"
    ;; beamer
    "insert[a-z]+"
    "resetcount\\(?:er\\)?onoverlays"
    "frame"
    "tableofcontents"
    "movie"
    "hyperlinkmovie"
    "multiinclude"
    "sound"
    "hyperlinksound"
    "trans[a-z]+"
    "use[a-z]*theme"
    "ifbeamertemplateempty"
    "expandbeamertemplate"
    "defbeamertemplateparent"
    "\\(?:use\\|set\\)beamer\\(?:color\\|font\\)"
    "setbeamercovered"
    "note"
    "includeslide"
    ;; listings
    "lst[a-zDIMS]+")
  "A list of regexps to match commands involved with arguments."
  :type '(repeat regexp)
  :group 'auto-complete-latex)

(defcustom ac-l-file-regexps
  '("include\\(?:only\\)?"
    "input"
    ;; hyperref
    "hypersetup"
    ;; graphicx
    "includegraphics")
  "A list of regexps to match commands involved with file name argument."
  :type '(repeat regexp)
  :group 'auto-complete-latex)

(defcustom ac-l-label-regexps
  '("\\(?:page\\|auto\\|eq\\)?ref"
    "label")
  "A list of regexps to match commands involved with label name argument."
  :type '(repeat regexp)
  :group 'auto-complete-latex)

(defcustom ac-l-bib-regexps
  '("\\(?:no\\|short\\)?cite[a-zA-Z]*"
    "bibitem")
  "A list of regexps to match commands involved with bibliography argument."
  :type '(repeat regexp)
  :group 'auto-complete-latex)

;; To be precise, this function doesn't work as omni completion
;; because it returns ac-point. Perhaps completion with using it
;; will be interferenced by other sources.
(defun ac-l-prefix-in-paren (regexps)
  (if (save-excursion
        (re-search-backward
         (concat "\\\\\\("
                 (mapconcat #'identity regexps "\\|")
                 "\\)\\*?\\(\\s([^]>}]*\\s)\\)*\\(\\s([^]>}]*\\)\\=")
         nil t))
      ac-point))

;;; read file data
(defsubst ac-l-convert-filename-to-file (filename)
  (let ((nodir (file-name-nondirectory filename)))
    (if (string-match "^[^.]+" nodir) (match-string 0 nodir) nodir)))

(defun ac-l-read-bibs (files)
  "Convert each bib file to hash table."
  (let ((regexp "^@[^{@]+{\\([^ =,\t\n]*\\),\n[^@]+\\(^}\\)"))
    (dolist (filename files)
      (let* ((file (ac-l-convert-filename-to-file filename))
             (name (intern (format "ac-l-%s-table" file)))
             (table (make-hash-table :test 'equal)))
        (set name table)
        (ignore-errors
          (with-temp-buffer
            (insert-file-contents filename)
            (while (re-search-forward regexp nil t)
              (puthash (match-string-no-properties 1)
                       (match-string-no-properties 0)
                       table))))
        (ac-l-set-all-bib-tables
         (append (ac-l-get-all-bib-tables) (list name)))
        (ac-l-set-filenames
         (append (ac-l-get-filenames) (list file)))))))

(defun ac-l-read-packages (files table)
  "Convert each package file to hash element."
  (let ((cmd-re "\\\\\\(?:[a-z@]*def\\|let\\|new[a-z]+\\|providecommand\\|Declare[a-zA-Z@]+\\)\\*?[ \t]*{?\\\\\\([a-zA-Z]+\\)}?[ =\\#[{]")
        (arg-re  "\\\\\\(?:DeclareOption[a-zA-Z]*\\|new[a-z]+\\|@definecounter\\)\\*?[ \t]*{\\([a-zA-Z]+\\)}"))
    (dolist (filename files)
      (let ((file (ac-l-convert-filename-to-file filename))
            cand cmds args)
        (ignore-errors
          (with-temp-buffer
            (insert-file-contents filename)
            (while (re-search-forward cmd-re nil t)
              (setq cand (match-string-no-properties 1))
              (ac-l-pushnew-2 cand cmds))
            (goto-char (point-min))
            (while (re-search-forward arg-re nil t)
              (setq cand (match-string-no-properties 1))
              (ac-l-pushnew-2 cand args))))
        (puthash file (vector cmds args) table)
        (ac-l-set-filenames
         (append (ac-l-get-filenames) (list file)))))))

(defun ac-l-write-package-files (dir)
  "Write files listed in `ac-l-package-files' into DIR."
  (interactive
   (list (read-directory-name "Directory: " ac-l-dict-directory nil t)))
  (maphash (lambda (k v)
             (dolist (pair `((c . ,(aref v 0)) (a . ,(aref v 1))))
               (when (cdr pair)
                 (with-temp-buffer
                   (insert
                    (mapconcat #'identity (sort (cdr pair) #'string<) "\n"))
                   (write-region (point-min) (point-max)
                                 (format "%s%s-%s-*-*" dir k (car pair)))))))
           ac-l-packages))

(defcustom ac-l-dict-directory "~/.emacs.d/ac-l-dict/"
  "Path of the ac-l-dict."
  :type 'string
  :group 'auto-complete-latex)

(defcustom ac-l-package-dependences
  '(("hyperref" . "beamer")
    ("color" . "colortbl\\|beamer")
    ("array" . "tabularx\\|colortbl"))
  "Alist of external package dependences.
Each element is the form (CAR . CDR). CAR is a string, CDR is
a regexp.
CAR package is required in CDR packages. For example, array.sty
is required in tabularx.sty and colortbl.sty. So, the form must
be like below.

  (\"array\" . \"tabularx\\\\|colortbl\")

Package and class files are treated equivalently. Below code
indicates that candidates of amsmath.sty will be shown when
beamer class is loaded.

  (add-to-list 'ac-l-package-dependences '(\"amsmath\" . \"beamer\"))

Notice that this variable is effective only for files read from
ac-l-dict. It is not effective for files listed in
`ac-l-package-files'."
  :type '(repeat (cons string regexp))
  :group 'auto-complete-latex)

(defun ac-l-make-help-from-dir (dir)
  (let* ((files (directory-files dir))
         (help-fn (cond
                   ((member "YATEXHLP.jp" files)
                    ;; Suppress the warning of `kinsoku-limit'.
                    ;; `Warning: defvar ignored because kinsoku-limit is let-bound'.
                    (load "international/kinsoku")
                    'ac-l-yatex-jp-documentation)
                   ((member "latex-help" files)
                    'ac-l-latex2e-documentation)))
         (enable (and help-fn
                      (if (< emacs-major-version 23)
                          (and (require 'mule-util nil t)
                               (require 'tabify nil t))
                        t))))
    (when enable
      (push (cons 'document help-fn) ac-l-source-latex-commands)
      (push (cons 'document help-fn) ac-l-source-latex-arguments))))

(defun ac-l-make-source-from-dir (dir)
  "Make sources from files in DIR."
  (dolist (file (directory-files dir nil "^[^.]"))
    (let ((symbol "p")
          (prefix ac-l-command-prefix)
          source package req cmd arg)
      ;; parse properties from file name
      (cond
       ((string-match "^\\([^-]+\\)-\\([^-]+\\)-\\([^-]+\\)-\\([^-]+\\)$" file)
        (let* ((p (match-string 1 file))
               (T (match-string 2 file))
               (s (match-string 3 file))
               (r (match-string 4 file))
               (d (assoc-default p ac-l-package-dependences))
               (filenames (ac-l-get-filenames)))
          (unless (member p filenames)
            (ac-l-set-filenames (append filenames (list p))))
          (if d (setq package (concat p "\\|" d)) (setq package p))
          (unless (string= s "*") (setq symbol s))
          (unless (string= r "*") (setq req (string-to-number r)))
          (if (string= T "a")
              (setq prefix 'ac-l-argument
                    source (intern (format "ac-l-source-%s-arguments" p)))
            (setq source (intern (format "ac-l-source-%s-commands" p))))))
       ((or (string= "macro" file)
            (string= "latex-dot-ltx" file)
            (string-match "^\\(ptex-\\)?primitives$" file)
            (string-match "^\\(basic\\|platex\\)-commands$" file))
        (setq cmd t))
       ((string-match "^\\(basic\\|platex\\)-arguments$" file)
        (setq arg t))
       ((cond
         ((string= "user-commands" file)
          (setq symbol "u"))
         ((string= "user-arguments" file)
          (setq symbol "u" prefix 'ac-l-argument)))
        (setq source (intern (format "ac-l-source-%s" file)))))
      ;; read file contents.
      (when (or source cmd arg)
        (let ((cands (with-temp-buffer
                       (insert-file-contents (concat dir file))
                       (split-string (buffer-string) "\n"))))
          (cond
           (source
            (set source
                 (delq nil
                       (list (if package (cons 'ac-l-package package))
                             (if (integerp req) (cons 'requires req))
                             (cons 'symbol symbol)
                             (cons 'prefix prefix)
                             (cons 'candidates
                                   `(all-completions ac-prefix ',cands)))))
            (cond
             (package
              (ac-l-set-package-sources
               (append (ac-l-get-package-sources) (list source))))
             ((and (string= symbol "u")
                   (not (equal cands '(""))))
              (ac-l-set-user-prefix-sources
               (append (ac-l-get-user-prefix-sources) (list source))))))
           (cmd
            (ac-l-set-latex-commands
             (append (ac-l-get-latex-commands) cands)))
           (arg
            (ac-l-set-latex-arguments
             (append (ac-l-get-latex-arguments) cands)))))))))

;;; update file's info
(defstruct ac-l-info
  "Information about each tex file."
  filename                              ; file path
  modification                          ;
  words                                 ;
  commands                              ;
  packages                              ; package & class names
  labels                                ; ht: k -> label, v -> help
  bibitems                              ; ht: k -> bibitem, v -> help
  bibs)                                 ; bib file names

(defun ac-l-candidates-hash (regexp table beg end)
  (goto-char beg)
  (while (re-search-forward regexp end t)
    (puthash (match-string-no-properties 1)
             (match-string-no-properties 0)
             table)
    (goto-char (1+ (match-beginning 0)))))

(defun ac-l-make-info (file filename &optional master)
  (let* ((word-re "[^\\,]\\(\\<[-'a-zA-Z]+\\>\\)")
         (package-re "^[^%\n]*\\\\\\(?:\\(?:usep\\|RequireP\\)ackage\\|documentclass\\)\\(?:\\[[^]]*\\]\\)?{\\([^}]+\\)")
         (label-re "\\\\label{\\(\\(?:[^ }\t\n]\\)+\\)}")
         (label-re-1 (concat "^[^%\n]*" label-re ".*$"))
         (label-re-2 (concat "^.*\n.*\n.*\n[^%\n]*" label-re ".*\n.*\n.*\n.*$"))
         (bibitem-re "^[^%\n]*\\\\bibitem\\(?:\\[[^]]*\\]\\)?{\\(\\(?:[^ }\t\n]\\)+\\)}[^\\]*")
         (bib-re "^[^%\n]*\\\\bibliography{\\([^}]+\\)")
         (split-fn (lambda (str)
                     (split-string
                      str "\\([ \t\r\n]\\|%[^\n\r]*[\n\r]\\|,\\)+" t)))
         (collect-p (and (ac-l-master-p)
                         (not master)
                         (not (buffer-file-name))))
         (beg (point-min))
         (label-beg (save-excursion
                      (goto-char beg)
                      (forward-line 3)
                      (point)))
         (label-end (save-excursion
                      (goto-char (point-max))
                      (forward-line -3)
                      (point)))
         (label-table (or (ignore-errors
                            (ac-l-info-labels (symbol-value file)))
                          (make-hash-table :test 'equal)))
         (bibitem-table (or (ignore-errors
                              (ac-l-info-bibitems (symbol-value file)))
                            (make-hash-table :test 'equal)))
         i cand cands)
    (clrhash label-table)
    (clrhash bibitem-table)
    (save-excursion
      (make-ac-l-info
       :filename filename
       :modification (ignore-errors (nth 5 (file-attributes filename)))
       :words (when (and ac-l-use-word-completion collect-p)
                (setq i 0 cands nil)
                (goto-char beg)
                (while (and (re-search-forward word-re nil t) (<= i 100))
                  (setq cand (match-string-no-properties 1))
                  (when (and (not (member cand cands))
                             (>= (length cand) 3))
                    (push cand cands)
                    (incf i)))
                cands)
       :commands (when collect-p
                   (let ((latex-cmds (ac-l-get-latex-commands)))
                     (setq i 0 cands nil)
                     (goto-char beg)
                     (while (and (re-search-forward ac-l-command-prefix nil t)
                                 (<= i 100))
                       (setq cand (match-string-no-properties 1))
                       (unless (or (member cand cands)
                                   (member cand latex-cmds))
                         (push cand cands)
                         (incf i))))
                   cands)
       :packages (when master
                   (setq cands nil)
                   (goto-char beg)
                   (while (re-search-forward package-re nil t)
                     (dolist (name (funcall split-fn
                                            (match-string-no-properties 1)))
                       (ac-l-pushnew-2 name cands)))
                   cands)
       :labels (progn
                 (ac-l-candidates-hash label-re-1 label-table beg label-beg)
                 (ac-l-candidates-hash label-re-2 label-table label-beg nil)
                 (ac-l-candidates-hash label-re-1 label-table label-end nil)
                 label-table)
       :bibitems (progn
                   (ac-l-candidates-hash bibitem-re bibitem-table beg nil)
                   bibitem-table)
       :bibs (progn
               (setq cands nil)
               (goto-char beg)
               (when (re-search-forward bib-re nil t)
                 (dolist (name (funcall split-fn (match-string-no-properties 1)))
                   (ac-l-pushnew-2 name cands)))
               cands)))))

(defconst ac-l-children (make-hash-table :test 'equal)
  "Hash table. k -> filename (full path), v -> file (cl struct)")

(defvar ac-l-master nil
  "Internal variable (cl struct).
Are you looking for `ac-l-master-file'?")

(defsubst ac-l-all-info-files ()
  (append (loop for v being the hash-values in ac-l-children collect v)
          '(ac-l-master)))

(defun ac-l-append-info (info-fn)
  (loop for file in (ac-l-all-info-files)
        append (funcall info-fn (symbol-value file)) into elts
        finally return (nreverse elts)))

(defun ac-l-collect-info (info-fn)
  (loop for file in (ac-l-all-info-files)
        collect (funcall info-fn (symbol-value file))))

(defun ac-l-update-children-names ()
  "Update `ac-l-children'."
  (let ((regexp "^[^%\n]*\\\\\\(?:input\\|include\\)[ {\t]+\\([^ }%\n]+\\)")
        (dir (if (string-match "^\\(.+/\\).+$" ac-l-master-file)
                 (match-string 1 ac-l-master-file)
               "/"))
        (i 0))
    (clrhash ac-l-children)
    (save-excursion
      (goto-char (point-min))
      (while (re-search-forward regexp nil t)
        (let* ((path (expand-file-name (match-string-no-properties 1) dir))
               (filename (concat (if (string-match "^\\(.+\\)\\.[^./]+$" path)
                                     (match-string 1 path)
                                   path)
                                 ".tex")))
          (when (and (file-exists-p filename)
                     (not (gethash filename ac-l-children)))
            (puthash filename
                     (intern (format "ac-l-child-%d" i))
                     ac-l-children)
            (incf i)))))))

(defsubst ac-l-file-mod-p (file filename)
  "Return non-nil, if FILENAME is modified."
  (if (not (equal (ac-l-info-modification (symbol-value file))
                  (nth 5 (file-attributes filename))))
      t))

(defsubst ac-l-different-file-p (file filename)
  "Return non-nil, if FILE and FILENAME are different."
  (if (not (string= (ac-l-info-filename (symbol-value file))
                    filename))
      t))

(defsubst ac-l-update-master-info ()
  (setq ac-l-master (ac-l-make-info 'ac-l-master ac-l-master-file t)))

(defun ac-l-update-info (&optional force)
  "If necessary, update file's info."
  (if (ac-l-master-p)
      (let ((master-mod-p (or force
                              (ac-l-file-mod-p 'ac-l-master
                                               ac-l-master-file))))
        ;; master
        (or (loop with master = (expand-file-name ac-l-master-file)
                  for buf in (buffer-list)
                  if (string= master (buffer-file-name buf))
                  do (when (or (buffer-modified-p buf) master-mod-p)
                       (with-current-buffer buf
                         (ac-l-update-children-names)
                         (ac-l-update-master-info)))
                  and return t
                  finally return nil)
            (when master-mod-p
              (with-temp-buffer
                (insert-file-contents ac-l-master-file)
                (ac-l-update-children-names)
                (ac-l-update-master-info))))
        ;; children
        (let ((table (copy-hash-table ac-l-children)))
          (dolist (buf (buffer-list))
            (let* ((filename (buffer-file-name buf))
                   (file (gethash filename table)))
              (when (and file
                         (or force
                             (buffer-modified-p buf)
                             (ac-l-different-file-p file filename)
                             (ac-l-file-mod-p file filename)))
                (with-current-buffer buf
                  (set file (ac-l-make-info file filename)))
                (remhash filename table))))
          (maphash (lambda (filename file)
                     (when (or force
                               (ac-l-different-file-p file filename)
                               (ac-l-file-mod-p file filename))
                       (with-temp-buffer
                         (insert-file-contents filename)
                         (set file (ac-l-make-info file filename)))))
                   table)))
    (when (or force (buffer-modified-p))
      (ac-l-update-master-info))))

;;; update
(defun ac-l-update-package-sources ()
  "Update package sources and candidates."
  (ac-l-set-package-commands nil)
  (ac-l-set-package-arguments nil)
  (let (cmd-sources arg-sources)
    (dolist (name (ac-l-info-packages ac-l-master))
      ;; sources
      (dolist (source (ac-l-get-package-sources))
        (let* ((alist (symbol-value source))
               (package (cdr (assq 'ac-l-package alist)))
               (prefix (cdr (assq 'prefix alist))))
          (when (string-match package name)
            (cond
             ((string= prefix ac-l-command-prefix)
              (ac-l-pushnew-1 source cmd-sources))
             ((eq prefix 'ac-l-argument)
              (ac-l-pushnew-1 source arg-sources))))))
      ;; candidates
      (let* ((v (gethash name ac-l-packages))
             (cmds (elt v 0))
             (args (elt v 1)))
        (if cmds
            (ac-l-set-package-commands
             (append (ac-l-get-package-commands) cmds)))
        (if args
            (ac-l-set-package-arguments
             (append (ac-l-get-package-arguments) args)))))
    ;; result
    (cons (nreverse cmd-sources)
          (nreverse arg-sources))))

(defun ac-l-update ()
  "Update `ac-sources'."
  (let* ((pair (ac-l-update-package-sources))
         (cmd-sources (car pair))
         (arg-sources (cdr pair)))
    (setq ac-sources
          (delq nil
                (append (ac-l-get-user-prefix-sources)
                        (list 'ac-source-filename
                              'ac-l-source-labels
                              'ac-l-source-bibitems
                              (if ac-l-bib-files
                                  'ac-l-source-bibliographies)
                              (if (ac-l-get-latex-commands)
                                  'ac-l-source-latex-commands))
                        cmd-sources
                        (list (if ac-l-package-files
                                  'ac-l-source-package-commands)
                              (cdr (ac-l-get-buffer-sources))
                              (if (ac-l-master-p)
                                  'ac-l-source-commands-in-files)
                              (if (ac-l-get-latex-arguments)
                                  'ac-l-source-latex-arguments))
                        arg-sources
                        (list (if ac-l-package-files
                                  'ac-l-source-package-arguments)
                              'ac-l-source-filenames
                              'ac-source-files-in-current-dir)
                        ;; without prefix
                        (ac-l-get-user-noprefix-sources)
                        (list (if ac-l-use-word-completion
                                  (car (ac-l-get-buffer-sources)))
                              (if (and (ac-l-master-p)
                                       ac-l-use-word-completion)
                                  'ac-l-source-words-in-files)
                              'ac-source-dictionary))))))

(defun ac-l-update-bib ()
  "Update bib tables."
  (ac-l-set-current-bib-tables nil)
  (dolist (name (ac-l-append-info 'ac-l-info-bibs))
    (dolist (table (ac-l-get-all-bib-tables))
      (let ((tables (ac-l-get-current-bib-tables)))
        (when (and (string= (format "ac-l-%s-table" name)
                            (symbol-name table))
                   (not (memq table tables)))
          (ac-l-set-current-bib-tables
           (append tables (list table))))))))

;;; candidate
;;; copied from auto-complete.el and added arguments
(defun ac-l-candidate (beg-re end-re)
  (let ((i 0)
        (regexp (concat beg-re (regexp-quote ac-prefix) end-re))
        cand cands)
    (save-excursion
      ;; Search backward
      (goto-char ac-point)
      (while (and (or (not (integerp ac-limit)) (< i ac-limit))
                  (re-search-backward regexp nil t))
        (setq cand (match-string-no-properties 1))
        (unless (member cand cands)
          (push cand cands)
          (incf i)))
      ;; Search backward
      (goto-char (+ ac-point (length ac-prefix)))
      (while (and (or (not (integerp ac-limit)) (< i ac-limit))
                  (re-search-forward regexp nil t))
        (setq cand (match-string-no-properties 1))
        (unless (member cand cands)
          (push cand cands)
          (incf i))))
    (nreverse cands)))

(defun ac-l-incremental-update-index (idx cand-fn)
  (let ((pair (symbol-value idx))
        (ac-limit (or (and (integerp ac-limit) ac-limit) 10)))
    (when (null pair)
      (set idx (cons nil nil)))
    ;; Mark incomplete
    (when (car pair)
      (setcar pair nil))
    (let ((list (cdr pair))
          (words (funcall cand-fn)))
      (dolist (word words)
        (unless (member word list)
          (push word list)
          (setcdr pair list))))))

(defun ac-l-update-index (idx cand-fn &optional same-mode)
  (dolist (buf (buffer-list))
    (when (and (if same-mode
                   (eq ac-l-major-mode (buffer-local-value 'major-mode buf))
                 t)
               (or ac-fuzzy-enable
                   (not (eq buf (current-buffer)))))
      (with-current-buffer buf
        (when (and (not (car (symbol-value idx)))
                   (< (buffer-size) 1048576))
          ;; Complete index
          (set idx (cons t (let ((ac-point (point-min))
                                 (ac-prefix "")
                                 ac-limit)
                             (funcall cand-fn)))))))))

(defun ac-l-candidates (idx cand-fn &optional same-mode)
  (loop initially (unless ac-fuzzy-enable
                    (ac-l-incremental-update-index idx cand-fn))
        for buf in (buffer-list)
        if (and (or (not (integerp ac-limit))
                    (< (length cands) ac-limit))
                (if same-mode
                    (derived-mode-p (buffer-local-value 'major-mode buf))
                  t))
        append (funcall ac-match-function
                        ac-prefix
                        (cdr (buffer-local-value idx buf)))
        into cands
        finally return cands))


;;;; sources

;;; words
(defvar ac-l-word-index nil)
(make-variable-buffer-local 'ac-l-word-index)

(defsubst ac-l-candidate-words-in-buffer ()
  (ac-l-candidate "[^\\,]\\(\\<" "[-'a-zA-Z]+\\>\\)"))

;; Meadow/Emacs memo: http://www.bookshelf.jp/soft/meadow_34.html#SEC495
(defun ac-l-smart-capitalize ()
  (when (and (looking-back "[[:space:][:cntrl:]]+[a-z']+")
             (= (point) (save-excursion
                          (backward-sentence)
                          (forward-word)
                          (point))))
    (capitalize-word -1)))

(defvar ac-l-source-words-in-buffer
  '((candidates . (ac-l-candidates 'ac-l-word-index
                                   'ac-l-candidate-words-in-buffer))
    (action . ac-l-smart-capitalize)
    (requires . 3))
  "Source for words in current buffer.")

(defvar ac-l-source-words-in-all-buffer
  '((init . (ac-l-update-index 'ac-l-word-index
                               'ac-l-candidate-words-in-buffer))
    (candidates . (ac-l-candidates 'ac-l-word-index
                                   'ac-l-candidate-words-in-buffer))
    (action . ac-l-smart-capitalize)
    (requires . 3))
  "Source for words in all buffers.")

(defvar ac-l-source-words-in-same-mode-buffers
  '((init . (ac-l-update-index 'ac-l-word-index
                               'ac-l-candidate-words-in-buffer
                               t))
    (candidates . (ac-l-candidates 'ac-l-word-index
                                   'ac-l-candidate-words-in-buffer
                                   t))
    (action . ac-l-smart-capitalize)
    (requires . 3))
  "Source for words in same mode buffers.")

(defvar ac-l-source-words-in-files
  '((candidates . (ac-l-append-info 'ac-l-info-words))
    (action . ac-l-smart-capitalize)
    (requires . 3))
  "Source for words in tex files.")

;;; commands
(defvar ac-l-command-index nil)
(make-variable-buffer-local 'ac-l-command-index)

(defsubst ac-l-candidate-commands-in-buffer ()
  (ac-l-candidate "\\\\\\(" "[a-zA-Z@]+\\)"))

(defvar ac-l-source-commands-in-buffer
  `((candidates . (ac-l-candidates 'ac-l-command-index
                                   'ac-l-candidate-commands-in-buffer))
    (prefix . ,ac-l-command-prefix))
  "Source for commands in current buffer.")

(defvar ac-l-source-commands-in-all-buffer
  `((init . (ac-l-update-index 'ac-l-command-index
                               'ac-l-candidate-commands-in-buffer))
    (candidates . (ac-l-candidates 'ac-l-command-index
                                   'ac-l-candidate-commands-in-buffer))
    (prefix . ,ac-l-command-prefix))
  "Source for commands in all buffers.")

(defvar ac-l-source-commands-in-same-mode-buffers
  `((init . (ac-l-update-index 'ac-l-command-index
                               'ac-l-candidate-commands-in-buffer
                               t))
    (candidates . (ac-l-candidates 'ac-l-command-index
                                   'ac-l-candidate-commands-in-buffer
                                   t))
    (prefix . ,ac-l-command-prefix))
  "Source for commands in same mode buffers.")

(defvar ac-l-source-commands-in-files
  `((candidates . (ac-l-append-info 'ac-l-info-commands))
    (prefix . ,ac-l-command-prefix))
  "Source for commands in tex files.")

;;; etc
(defconst ac-l-source-latex-commands
  `((candidates . ac-l-get-latex-commands)
    (prefix . ,ac-l-command-prefix)
    (symbol . "l")))

(defconst ac-l-source-latex-arguments
  `((candidates . ac-l-get-latex-arguments)
    (prefix . ac-l-argument)
    (symbol . "l")))

(defvar ac-l-source-filenames
  '((candidates . ac-l-get-filenames)
    (prefix . ac-l-argument))
  "Source for names of packages and bib files.")

(defvar ac-l-source-package-commands
  `((candidates . ac-l-get-package-commands)
    (prefix . ,ac-l-command-prefix)
    (symbol . "p"))
  "Source for commands in `ac-l-package-files'.")

(defvar ac-l-source-package-arguments
  '((candidates . ac-l-get-package-arguments)
    (prefix . ac-l-argument)
    (symbol . "p"))
  "Source for arguments in `ac-l-package-files'.")

(defsubst ac-l-thereis-hash-value (key tables)
  (loop for table in tables
        thereis (gethash key (if (hash-table-p table) table (symbol-value table)))))

(defun ac-l-append-cands-without-match-key (tables regexp)
  (loop for table in tables
        append (loop for k being the hash-keys in table collect k) into cands
        finally return
        (if (save-excursion
              (re-search-backward regexp nil t))
            (let ((m (match-beginning 1)))
              (delete (buffer-substring-no-properties m (1+ m)) cands))
          cands)))

(defvar ac-l-source-labels
  '((init . (ac-l-set-label-cands
             (ac-l-append-cands-without-match-key
              (ac-l-set-label-tables (ac-l-collect-info 'ac-l-info-labels))
              "\\\\label{\\([^}]+\\)\\=")))
    (candidates . ac-l-get-label-cands)
    (prefix . ac-l-label)
    (document . (lambda (k) (ac-l-thereis-hash-value k (ac-l-get-label-tables))))
    (symbol . "L"))
  "Source for labels.")

(defun ac-l-complete-labels ()
  "Start label name completion at point."
  (interactive)
  (auto-complete
   (list (remove '(prefix . ac-l-label) ac-l-source-labels))))

(defvar ac-l-source-bibitems
  '((init . (ac-l-set-bibitem-cands
             (ac-l-append-cands-without-match-key
              (ac-l-set-bibitem-tables (ac-l-collect-info 'ac-l-info-bibitems))
              "\\\\bibitem\\(?:\\[[^]]*\\]\\)?{\\([^}]+\\)\\=")))
    (candidates . ac-l-get-bibitem-cands)
    (prefix . ac-l-bib)
    (document . (lambda (k) (ac-l-thereis-hash-value k (ac-l-get-bibitem-tables))))
    (symbol . "B"))
  "Source for bibitems.")

(defvar ac-l-source-bibliographies
  '((init . (ac-l-set-bib-cands
             (loop for table in (ac-l-get-current-bib-tables)
                   append (loop for k being the hash-keys in (symbol-value table)
                                collect k)
                   into cands
                   finally return cands)))
    (candidates . ac-l-get-bib-cands)
    (prefix . ac-l-bib)
    (document . (lambda (k) (ac-l-thereis-hash-value k (ac-l-get-current-bib-tables))))
    (symbol . "B"))
  "Source for bibliographies in `ac-l-bib-files'.")

(defun ac-l-complete-bibs ()
  "Start bibliography completion at point."
  (interactive)
  (auto-complete
   (list (remove '(prefix . ac-l-bib) ac-l-source-bibitems)
         (remove '(prefix . ac-l-bib) ac-l-source-bibliographies))))

;;; help
(defconst ac-l-help (make-hash-table :test 'equal)
  "Hash table. k -> keyword, v -> quick help contents")

(defmacro ac-l-define-help-doc (name file beg-re end-re)
  (declare (indent 1))
  `(defun ,(intern (format "ac-l-%s-documentation" name)) (str)
     (or (gethash str ac-l-help)
         (unless (string-match "@" str)
           (with-temp-buffer
             (insert-file-contents (concat ac-l-dict-directory ,file))
             (if (re-search-forward (concat ,beg-re str ,end-re) nil t)
                 (puthash str (match-string-no-properties 1) ac-l-help)
               (puthash str t ac-l-help)))))))

(ac-l-define-help-doc latex2e
  "latex-help"
  "\\(?:\n\\)\\([^]*\\(?:^[`\\]"
  "\\(?:\\s(\\|[ '\n]\\)[^]+\\)\\)")

(ac-l-define-help-doc yatex-jp
  "YATEXHLP.jp"
  "^\\(\\\\?"
  "\n[^]+\\)")


;;;; clear

(defvar ac-l-clear-timer nil
  "Timer for `ac-l-clear'.")

(defun ac-l-clear ()
  (clrhash ac-l-help))

(defun ac-l-clear-all ()
  (interactive)
  (ac-l-clear)
  (ac-l-cancel-timer)
  (clrhash ac-l-packages)
  (dolist (file (append (ac-l-all-info-files)
                        (ac-l-get-all-bib-tables)
                        (ac-l-get-package-sources)))
    (let ((v (symbol-value file)))
      (if (hash-table-p v) (clrhash v))
      (if (arrayp v) (fillarray v nil))
      (set file nil)))
  (dolist (buf (buffer-list))
    (with-current-buffer buf
      (setq ac-l-word-index nil
            ac-l-command-index nil)))
  (clrhash ac-l-children)
  (fillarray ac-l--dummy nil)
  (when (boundp 'ac-l-source-user-commands)
    (setq ac-l-source-user-commands nil))
  (when (boundp 'ac-l-source-user-arguments)
    (setq ac-l-source-user-arguments nil))
  (setq ac-l-major-mode nil))

(defun ac-l-cancel-timer ()
  (interactive)
  (dolist (timer '(ac-l-update-timer
                   ac-l-clear-timer))
    (let ((T (symbol-value timer)))
      (when (timerp T)
        (cancel-timer T)
        (set timer nil)))))


;;;; setup

(defun ac-l-update-all (&optional force)
  (when (eq ac-l-major-mode major-mode)
    (if force (ac-l-update-info t) (ac-l-update-info))
    (ac-l-update)
    (ac-l-update-bib)))

(defun ac-l-setup ()
  "Set up Auto Complete LaTeX."
  (let ((msg "Loading auto-complete-latex..."))
    (message "%s" msg)
    (setq ac-l-major-mode major-mode)
    ;; set buffer source
    (unless (ac-l-get-buffer-sources)
      (ac-l-set-buffer-sources
       (cond
        ((memq 'ac-source-words-in-buffer ac-sources)
         (cons 'ac-l-source-words-in-buffer
               'ac-l-source-commands-in-buffer))
        ((memq 'ac-source-words-in-all-buffer ac-sources)
         (cons 'ac-l-source-words-in-all-buffer
               'ac-l-source-commands-in-all-buffer))
        (t
         (cons 'ac-l-source-words-in-same-mode-buffers
               'ac-l-source-commands-in-same-mode-buffers)))))
    ;; ac-l-sources
    (when (and ac-l-sources
               (null (ac-l-get-user-noprefix-sources))
               (null (ac-l-get-user-prefix-sources)))
      (dolist (source ac-l-sources)
        (if (assq 'prefix (symbol-value source))
            (ac-l-set-user-prefix-sources
             (append (ac-l-get-user-prefix-sources) (list source)))
          (ac-l-set-user-noprefix-sources
           (append (ac-l-get-user-noprefix-sources) (list source))))))
    ;; read files
    (when (and ac-l-package-files
               (zerop (hash-table-count ac-l-packages)))
      (ac-l-read-packages ac-l-package-files ac-l-packages))
    (when (and ac-l-bib-files
               (null (ac-l-get-all-bib-tables)))
      (ac-l-read-bibs ac-l-bib-files))
    ;; make sources from ac-l-dict
    (unless (or (ac-l-get-latex-commands)
                (ac-l-get-latex-arguments)
                (ac-l-get-package-sources))
      (ac-l-make-source-from-dir ac-l-dict-directory)
      (ac-l-make-help-from-dir ac-l-dict-directory))
    ;; add prefix properties
    (unless (local-variable-p 'ac-prefix-definitions)
      (set (make-local-variable 'ac-prefix-definitions)
           (let ((ac-l-prefix-definitions
                  '((ac-l-argument . (ac-l-prefix-in-paren ac-l-argument-regexps))
                    (ac-l-file . (ac-l-prefix-in-paren ac-l-file-regexps))
                    (ac-l-label . (ac-l-prefix-in-paren ac-l-label-regexps))
                    (ac-l-bib . (ac-l-prefix-in-paren ac-l-bib-regexps)))))
             (append ac-l-prefix-definitions ac-prefix-definitions))))
    ;; modify ac-source-*
    (unless (local-variable-p 'ac-source-files-in-current-dir)
      (set (make-local-variable 'ac-source-files-in-current-dir)
           (append '((prefix . ac-l-file)
                     (symbol . "F"))
                   ac-source-files-in-current-dir)))
    ;; set timer
    (ac-l-cancel-timer)
    (setq ac-l-update-timer
          (run-with-idle-timer ac-l-update-delay t 'ac-l-update-all)
          ac-l-clear-timer
          (run-with-timer 600 600 'ac-l-clear))
    ;; initial update
    (unless (and (ac-l-master-p)
                 ac-l-master)
      (ac-l-update-all t))
    (message "%sdone" msg)))

(provide 'auto-complete-latex)

;;; auto-complete-latex.el ends here
