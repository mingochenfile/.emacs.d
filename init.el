(add-to-list 'load-path "~/.emacs.d/multiple-cursors")
(require 'multiple-cursors)
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)

(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(add-to-list 'load-path "~/.emasc.d")
;(require 'scilab-startup)


(add-to-list 'load-path "~/.emacs.d/python-mode") 
(setq py-install-directory "~/.emacs.d/python-mode")
(require 'python-mode)

(autoload 'ebib "ebib" "Ebib, a BibTeX database manager." t)
(global-set-key "\C-ce" 'ebib)
(getenv "PATH")
 (setenv "PATH"
(concat
 "/usr/local/bin" ":" "/usr/texbin" ":"
(getenv "PATH")))
;;prohibit the welcome face
(setq inhibit-startup-message t) 

;;;read email
;(setq gnus-secondary-select-methods '((nnml ""))
 ;     mail-sources '((pop :server "pop3server"
;			  :user "username")))


(setq-default ispell-program-name "aspell")
;;;add outline-mode

(add-hook 'outline-mode-hook 'my-outline-easy-bindings)
(add-hook 'outline-minor-mode-hook 'my-outline-easy-bindings)
(defun my-outline-easy-bindings ()
  (require 'outline-mode-easy-bings nil t))

;;;folding mode
(load "~/.emacs.d/folding.el" 'nomessage 'noerror)
(folding-mode-add-find-file-hook)
(folding-add-to-marks-list 'org-mode "# {{{" "# }}}" nil t)
(add-hook 'org-mode-hook 'folding-mode)



;; recent file list
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 30)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)


;;;cedet configuration
;(load-file "~/.emacs.d/cedet-1.1/common/cedet.el")
;(global-ede-mode 1)
;(semantic-load-enable-code-helpers)
;(global-srecode-minor-mode 1)


;;;default encoding
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; reftex configuration 
(setq reftex-enable-partial-scans t)
(setq reftex-save-parse-info t)
(setq reftex-use-multiple-selection-buffers t)
(setq reftex-plug-into-AUCTeX t)
(autoload 'reftex-mode "reftex" "RefTeX Minor Mode" t)
(autoload 'turn-on-reftex "reftex" "RefTeX Minor Mode" nil)
(autoload 'reftex-label "reftex-label" "Make label" nil)
(autoload 'reftex-reference "reftex-reference" "Make label" nil)
(autoload 'reftex-citation "reftex-cite" "Make citation" nil)
(autoload 'reftex-index-phrase-mode "reftex-index" "Phrase Mode" t)
(add-hook 'latex-mode-hook 'turn-on-reftex) ; with Emacs latex mode
;(add-hook 'reftex-load-hook 'imenu-add-menubar-index)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq LaTeX-eqnarray-label "eq"
 LaTeX-equation-label "eq"
 LaTeX-figure-label "fig"
LaTeX-table-label "tab"
LaTeX-myChapter-label "chap"
TeX-auto-save t
TeX-newline-function 'reindent-then-newline-and-indent
TeX-parse-self t
TeX-style-path
'("style/" "auto/"
"~/.emacs.d/auctex/auctex/style")
LaTeX-section-hook
'(LaTeX-section-heading
LaTeX-section-title
LaTeX-section-toc
LaTeX-section-section
LaTeX-section-label))

 ;;latex preview
;(load "auctex.el" t t)
;(load "preview-latex.el" nil t t)

;; (setq preview-gs-options '("-q" "-dNOSAFER" "-dNOPAUSE" "-DNOPLATFONTS" "-dPrinted" "-dTextAlphaBits=4" "-dGraphicsAlphaBits=4"))

;;;pdf-latex
(setq TeX-PDF-mode t)
;;;;; LATEX configure
(add-to-list 'load-path "~/.emacs.d/")
;;auto'-save
(setq TeX-save-query nil)

;;insert master name directly
(setq-default TeX-master-file "main")

;;;outline
(defun turn-on-outline-minor-mode ()
(outline-minor-mode 1))

(add-hook 'LaTeX-mode-hook 'turn-on-outline-minor-mode)
(add-hook 'latex-mode-hook 'turn-on-outline-minor-mode)
(setq outline-minor-mode-prefix "\C-c \C-o") ; Or something else





;;auto-pair
(load "~/.emacs.d/autopair.el")
(autopair-global-mode)
;;fly spell 
(autoload 'flyspell-mode "flyspell" "On-the-fly spelling checker" t)
(autoload 'flyspell-delay-command "flyspell" "Delay on command" t)
(autoload 'tex-mode-flyspell-verify "flyspell" "" t)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)


;;; enable gnuplot

;; active Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((gnuplot . t)))
;; add additional languages with '((language . t)))





;;display
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-command-list (quote (("latexmk" "latexmk -pdf %s" TeX-run-TeX nil t :help "Run latexmk on file") ("latexmk" "latexmk -pdf %s" TeX-run-TeX nil t :help "Run latexmk on file") ("latexmk" "latexmk -pdf %s" TeX-run-TeX nil t :help "Run latexmk on file") ("latexmk" "latexmk -pdf %s" TeX-run-TeX nil t :help "Run latexmk on file") ("latexmk" "latexmk -pdf %s" TeX-run-TeX nil t :help "Run latexmk on file") ("latexmk" "latexmk -pdf %s" TeX-run-TeX nil t :help "Run latexmk on file") ("latexmk" "latexmk -pdf %s" TeX-run-TeX nil t :help "Run latexmk on file") ("latexmk" "latexmk -pdf %s" TeX-run-TeX nil t :help "Run latexmk on file") ("latexmk" "latexmk -pdf %s" TeX-run-TeX nil t :help "Run latexmk on file") ("TeX" "%(PDF)%(tex) %`%S%(PDFout)%(mode)%' %t" TeX-run-TeX nil (plain-tex-mode texinfo-mode ams-tex-mode) :help "Run plain TeX") ("latexnonint" "%`%l -interaction=nonstopmode %(mode)%'%t" TeX-run-command nil t) ("LaTeX" "%`%l %(mode)%' %t" TeX-run-TeX nil (latex-mode doctex-mode) :help "Run LaTeX") ("Makeinfo" "makeinfo %t" TeX-run-compile nil (texinfo-mode) :help "Run Makeinfo with Info output") ("Makeinfo HTML" "makeinfo --html %t" TeX-run-compile nil (texinfo-mode) :help "Run Makeinfo with HTML output") ("AmSTeX" "%(PDF)amstex %`%S%(PDFout)%(mode)%' %t" TeX-run-TeX nil (ams-tex-mode) :help "Run AMSTeX") ("ConTeXt" "texexec --once --texutil %(execopts)%t" TeX-run-TeX nil (context-mode) :help "Run ConTeXt once") ("ConTeXt Full" "texexec %(execopts)%t" TeX-run-TeX nil (context-mode) :help "Run ConTeXt until completion") ("BibTeX" "bibtex %s" TeX-run-BibTeX nil t :help "Run BibTeX") ("View" "%V" TeX-run-discard-or-function t t :help "Run Viewer") ("Print" "%p" TeX-run-command t t :help "Print the file") ("Queue" "%q" TeX-run-background nil t :help "View the printer queue" :visible TeX-queue-command) ("File" "%(o?)dvips %d -o %f " TeX-run-command t t :help "Generate PostScript file") ("Index" "makeindex %s" TeX-run-command nil t :help "Create index file") ("Check" "lacheck %s" TeX-run-compile nil (latex-mode) :help "Check LaTeX file for correctness") ("Spell" "(TeX-ispell-document \"\")" TeX-run-function nil t :help "Spell-check the document") ("Clean" "TeX-clean" TeX-run-function nil t :help "Delete generated intermediate files") ("Clean All" "(TeX-clean t)" TeX-run-function nil t :help "Delete generated intermediate and output files") ("Other" "" TeX-run-command t t :help "Run an arbitrary command"))))
 '(column-number-mode t)
 '(display-time-mode t)
 '(org-babel-load-languages (quote ((emacs-lisp . t) (R . t) (python . t) (C \.t))))
 '(org-confirm-babel-evaluate nil)
 '(org-modules (quote (org-bbdb org-bibtex org-docview org-gnus org-id org-info org-jsinfo org-irc org-mew org-mhe org-rmail org-special-blocks org-vm org-wl org-w3m org-mouse org-mairix org-toc)))
 '(preview-gs-options (quote ("-q" "" "-dNOPAUSE" "-DNOPLATFONTS" "-dPrinted" "-dTextAlphaBits=4" "-dGraphicsAlphaBits=4")))
 '(safe-local-variable-values (quote ((org-export-latex-listings . minted) (org-export-latex-minted-options ("frame" "lines") ("fontsize" "\\scriptsize") ("linenos" "false")) (org-src-preserve-indentation . true)))))
;;auto identation
(defun set-newline-and-indent ()
  (local-set-key (kbd "RET") 'reindent-then-newline-and-indent))
(add-hook 'LaTeX-mode-hook 'set-newline-and-indent)

;;latex math mode
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(setq TeX-electric-sub-and-superscript t)
(global-linum-mode t)
;;latex pdf viewer
;(setq TeX-view-program-list '(("Evince" "evince --page-index=%(outpage) %o")))
;; (setq TeX-view-program-selection '((output-pdf "Evince")))



;;goto-line-key
(global-set-key (kbd "<f2>") 'goto-line)
(setq TeX-math-close-double-dollar t)
;;insert environment key
;;autocomplet
;;
(add-to-list 'load-path "~/.emacs.d/plugins/popup-el")
(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete/lib/fuzzy")
(add-to-list 'load-path "~/.emacs.d/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/ac-dist")
;;;
(defmacro ac-define-dictionary-source (name list)
  "Define dictionary source named `NAME'.
`LIST' is a list of string.
This is useful if you just want to define a dictionary/keywords source."
  `(defvar ,name
     '((candidates . (lambda () (all-completions ac-prefix ,list))))))

(require 'freq-word)
(ac-define-dictionary-source ac-freq-word freq-word-list)
;;;

(global-auto-complete-mode 1)
(ac-config-default)
(require 'pos-tip)
(setq ac-quick-help-prefer-pos-tip t)
(setq ac-fuzzy-enable t)
(setq ac-use-quick-help t)
(setq ac-quick-help-delay 2)
(setq ac-dwim t)



;;yasnippet
(add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
(add-to-list 'auto-mode-alist '("\\.cu$" . c++-mode))
(require 'yasnippet)
(setq yas-snippet-dirs "~/.emacs.d/plugins/yasnippet/snippets")
(yas/global-mode 1)
(set-default 'ac-sources
             '(ac-source-abbrev
               ac-source-dictionary
               ac-source-yasnippet
               ac-source-words-in-buffer
	       ac-source-files-in-current-dir
	       ac-source-words-in-same-mode-buffers
;;               ac-source-semantic
	       ac-freq-word
	       ))


(require 'ac-math)
;; The mode that automatically startup.
(setq ac-modes
      '(emacs-lisp-mode lisp-interaction-mode lisp-mode scheme-mode
                        c-mode cc-mode c++-mode java-mode
                        perl-mode cperl-mode python-mode ruby-mode
                        ecmascript-mode javascript-mode php-mode css-mode
                        makefile-mode sh-mode fortran-mode f90-mode ada-mode
                        xml-mode sgml-mode
                        haskell-mode literate-haskell-mode
                        emms-tag-editor-mode
                        asm-mode
                        org-mode
			latex-mode))

(add-to-list 'ac-trigger-commands 'org-self-insert-command)
(defun ac-latex-mode-setup ()         ; add ac-sources to default ac-sources
  (setq ac-sources
     (append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
               ac-sources)))

(add-hook 'latex-mode-hook 'ac-latex-mode-setup)

(ac-flyspell-workaround)


(require 'auto-complete-latex)
(setq ac-l-dict-directory "/path/to/ac-l-dict")
(add-to-list 'ac-modes 'foo-mode)
(add-hook 'foo-mode-hook 'ac-l-setup)


;;;global auto complete mode
(global-auto-complete-mode t)


;;;; load clang

;(add-to-list 'load-path "~/.emacs.d/plugins/wttr")
;(require 'wttr-utils)
;(require 'auto-complete-clang)  
;(add-to-list 'load-path "~/.emacs.d/")
;(require 'auto-complete-clang-async)
;(defun ac-cc-mode-setup ()  
;(setq ac-clang-complete-executable "clang")
;(setq ac-sources '(ac-source-clang-async))  
;(ac-clang-launch-completion-process)  )  
;(defun my-ac-config ()  
;(add-hook 'c-mode-common-hook 'ac-cc-mode-setup)  
;(add-hook 'auto-complete-mode-hook 'ac-common-setup)  
;(global-auto-complete-mode t))  
;(my-ac-config)  





(require 'auto-complete-acr)

 ;;; set quick compile
;; Auto-raise Emacs on activation
(add-hook 'LaTeX-mode-hook (lambda ()
  (push
    '("latexmk" "latexmk -pdf %s" TeX-run-TeX nil t
      :help "Run latexmk on file")
    TeX-command-list)))
(add-hook 'TeX-mode-hook '(lambda () (setq TeX-command-default "latexmk")))
(defun raise-emacs-on-aqua() 
    (shell-command "osascript -e 'tell application \"Emacs\" to activate' &")
(delete-other-windows)
)

(add-hook 'server-switch-hook 'raise-emacs-on-aqua)
(setq TeX-view-program-selection '((output-pdf "PDF Viewer")))
(setq TeX-view-program-list
     '(("PDF Viewer" "/Applications/Skim.app/Contents/SharedSupport/displayline -r -b -g %n %o %b")))

(server-start); start emacs in server mode so that skim can talk to it

(defun TeX-command-default (name)
  "Next TeX command to use. Most of the code is stolen from `TeX-command-query'."
  (cond ((if (string-equal name TeX-region)
             (TeX-check-files (concat name "." (TeX-output-extension))
                              (list name)
                              TeX-file-extensions)
           (TeX-save-document (TeX-master-file)))
         TeX-command-default)
        ((and (memq major-mode '(doctex-mode latex-mode))
              (TeX-check-files (concat name ".bbl")
                               (mapcar 'car
                                       (LaTeX-bibliography-list))
                               BibTeX-file-extensions))
         ;; We should check for bst files here as well.
         TeX-command-BibTeX)
        ((TeX-process-get-variable name
                                   'TeX-command-next
                                   TeX-command-Show))
        (TeX-command-Show)))

;;;  from wiki
(defcustom TeX-texify-Show t
  "Start view-command at end of TeX-texify?"
  :type 'boolean
  :group 'TeX-command)

(defcustom TeX-texify-max-runs-same-command 5
  "Maximal run number of the same command"
  :type 'integer
  :group 'TeX-command)

(defun TeX-texify-sentinel (&optional proc sentinel)
  "Non-interactive! Call the standard-sentinel of the current LaTeX-process.
If there is still something left do do start the next latex-command."
  (set-buffer (process-buffer proc))
  (funcall TeX-texify-sentinel proc sentinel)
  (let ((case-fold-search nil))
    (when (string-match "\\(finished\\|exited\\)" sentinel)
      (set-buffer TeX-command-buffer)
      (unless (plist-get TeX-error-report-switches (intern (TeX-master-file)))
        (TeX-texify)))))

(defun TeX-texify ()
  "Get everything done."
  (interactive)
  (let ((nextCmd (TeX-command-default (TeX-master-file)))
        proc)
    (if (and (null TeX-texify-Show)
             (equal nextCmd TeX-command-Show))
        (when  (called-interactively-p 'any)
          (message "TeX-texify: Nothing to be done."))
      (TeX-command nextCmd 'TeX-master-file)
      (when (or (called-interactively-p 'any)
                (null (boundp 'TeX-texify-count-same-command))
                (null (boundp 'TeX-texify-last-command))
                (null (equal nextCmd TeX-texify-last-command)))
        (mapc 'make-local-variable '(TeX-texify-sentinel TeX-texify-count-same-command TeX-texify-last-command))
        (setq TeX-texify-count-same-command 1))
      (if (>= TeX-texify-count-same-command TeX-texify-max-runs-same-command)
          (message "TeX-texify: Did %S already %d times. Don't want to do it anymore." TeX-texify-last-command TeX-texify-count-same-command)
        (setq TeX-texify-count-same-command (1+ TeX-texify-count-same-command))
        (setq TeX-texify-last-command nextCmd)
        (and (null (equal nextCmd TeX-command-Show))
             (setq proc (get-buffer-process (current-buffer)))
             (setq TeX-texify-sentinel (process-sentinel proc))
             (set-process-sentinel proc 'TeX-texify-sentinel))))))

(add-hook 'LaTeX-mode-hook
          '(lambda ()
             (define-key LaTeX-mode-map (kbd "<f5>") 'TeX-texify)))


(defun set-environment-key ()
  (local-set-key (kbd "<f3>") 'LaTeX-environment))
(add-hook 'LaTeX-mode-hook 'set-environment-key)
(defun set-tex-command-master ()
 (local-set-key (kbd "<f5>") 'TeX-command-master))
(add-hook 'LaTeX-mode-hook 'set-tex-command-master)

;;ssh login remote computer
(require 'ssh)

;;ess 
(add-to-list 'load-path "~/.emacs.d/ess-12.04-4/lisp")
(require 'ess-site)
;;r-mode 
;(add-hook 'r-mode-hook (lambda ()
;			 (local-set-key (kbd "M-/") 'comment-region)))



;;active fold the environment
(add-hook 'LaTeX-mode-hook (lambda ()
			     (TeX-fold-mode 1)))
(defun set-tex-fold-env ()
  (local-set-key (kbd "C-c <up>") 'TeX-fold-env))
(add-hook 'LaTeX-mode-hook 'set-tex-fold-env)
;;Set switch buffer
;(global-set-key (kbd "C-x <up>") 'switch-to-buffer)
;(global-set-key (kbd "C-x <down>") 'rename-buffer)
;;Set poj template  
(define-skeleton c-skeleton
  ""
  ""
  "#include<iostream>\n"
  "#include<cstring>\n"
  "#include<cmath>\n"
  "\n"
  "using namespace std;\n"
  "\n"
  "int main()\n"
  "{\n"
  "  return 0;\n"
  "}\n")
(add-hook 'c++-mode-hook (lambda()
			   (local-set-key (kbd "<f1>") 'c-skeleton)))
;(add-hook 'c++-mode-hook (lambda()
;			   (if (not (file-exists-p (buffer-file-name))) 'c-skeleton)))

(define-skeleton latex-homework
  ""
  ""
  "\\documentclass[addpoints]{exam}\n"
  "\\usepackage{amsmath}\n"
  "\\usepackage{amssymb}\n"
  "\\usepackage{multirow}\n"
  "\\usepackage{Sweave}"
  "\n"
  "\\title{}\n"
  "\\author{Ming Chen\\\\ Department of Mathematics}\n"
  "\\begin{document}\n"
  "\\maketitle{}\n"
  "\\printanswers\n"
  "\\begin{questions}\n"
  "  \\question[10]\n"
  "\n"
  "\\begin{parts}\n"
  "\n"
  "\\part\n"
  "\n"
  "\\begin{solution}\n"
  "\n"
  "\\end{solution}\n"
  "\\end{parts}\n"
  "\\end{questions}\n"
  "\\end{document}\n"
  )
(add-hook 'LaTeX-mode-hook (lambda()
			   (local-set-key (kbd "<f2>") 'latex-homework)))
(global-set-key (kbd "<f5>") 'ess-eval-line-and-step)


;;; clear the console in R
(defun clear-shell ()
  (interactive)
  (let ((old-max comint-buffer-maximum-size))
    (setq comint-buffer-maximum-size 0)
    (comint-truncate-buffer)
    (setq comint-buffer-maximum-size old-max)))

(global-set-key (kbd "\C-x c") 'clear-shell)


;;;compare windows
(global-set-key "\C-cw" 'compare-windows)



;;;jump to next brackets

(global-set-key (kbd "<C-tab>") (lambda()
				  (interactive)
				  (goto-char 
   (re-search-forward "[\])}]"
		   (point-max)
		   nil)
   )
  ))
;;;(next-brackets))



;;;matlab-mode
(add-to-list 'load-path "~/.emacs.d/matlab-emacs/matlab-emacs")
(require 'matlab)
(load-library "matlab-load")
;; Enable CEDET feature support for MATLAB code.(Optional)
(matlab-cedet-setup)

;;;a new line in the midle in previous line
(defun next-line-in-text()
  (interactive)
  (end-of-line nil)
  (newline nil))

(global-set-key (kbd "C-S-<return>") 'next-line-in-text)


;;;org-mode configuration
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-hook 'org-mode-hook 'turn-on-font-lock)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
;;;trace done of project
(setq org-log-done 'time)
;;; CLOSED:[timestamp]
(setq org-log-done 'note)

;;;org export pdf viewing in evince
;; (eval-after-load "org"
;;   '(progn
;;      ;; .txt files aren't in the list initially, but in case that changes
;;      ;; in a future version of org, use if to avoid errors
;;    ;  (if (assoc "\\.txt\\'" org-file-apps)
;;    ;      (setcdr (assoc "\\.txt\\'" org-file-apps) "notepad.exe %s")
;;    ;    (add-to-list 'org-file-apps '("\\.txt\\'" . "notepad.exe %s") t))
;;      ;; Change .pdf association directly within the alist
;;      (setcdr (assoc "\\.pdf\\'" org-file-apps) "evince %s")))

(add-to-list 'load-path "~/.emacs.d/")

(require 'orgconfig)
;(add-hook 'org-mode-hook 'turn-on-auto-fill)
 (add-hook 'org-mode-hook 'flyspell-mode)
(add-hook 'org-mode-hook 'auto-complete-mode)
;;;undo-tree
(add-to-list 'load-path "~/.emacs.d/undo-tree")
(require 'undo-tree)
(global-undo-tree-mode)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; stock price viewer
  (defun my-stock-quote-yahoo (ticker)
      "Download a stock price using Yahoo Finance (CSV format)."
      (require 'url)
      (with-temp-buffer
        (let (url-show-status)
           ;; url prior to about 2002 leaves some headers as invisible
           ;; text when reading http/1.1 chunked, workaround that by
           ;; retrieving and matching the stock code
           (url-insert-file-contents
            ;; s=FOO is the stock, f=sl1 asks for stock and last price
            (concat "http://quote.yahoo.com/d?f=sl1&s=" ticker))
           (set-buffer-modified-p nil))
        ;; yahoo gives "N/A" for an unknown ticker, which comes out as 0
        ;; from string-to-number, maybe throwing an error would be better
        (goto-char (point-min))
        (re-search-forward (concat (regexp-quote ticker) "\",\\(.+\\)"))
        (string-to-number (match-string 1))))
    (custom-add-option 'stock-quote-data-functions 'my-stock-quote-yahoo)

(setq stock-quote-data-functions '(my-stock-quote-yahoo))


;;;mu4e email client configuration
(add-to-list 'load-path "~/.emacs.d/mu4e/mu4e")

 (require 'mu4e)
     
     ;; default
      (setq mu4e-maildir "~/Maildir")
     (setq mu4e-mu-binary "/usr/bin/mu")
     (setq mu4e-drafts-folder "/[Gmail].Drafts")
     (setq mu4e-sent-folder   "/[Gmail].Sent Mail")
     (setq mu4e-trash-folder  "/[Gmail].Trash")
     
     ;; don't save message to Sent Messages, Gmail/IMAP takes care of this
     (setq mu4e-sent-messages-behavior 'delete)
     
     ;; setup some handy shortcuts
     ;; you can quickly switch to your Inbox -- press ``ji''
     ;; then, when you want archive some messages, move them to
     ;; the 'All Mail' folder by pressing ``ma''.
     
     (setq mu4e-maildir-shortcuts
         '( ("/INBOX"               . ?i)
            ("/[Gmail].Sent Mail"   . ?s)
            ("/[Gmail].Trash"       . ?t)
            ("/[Gmail].All Mail"    . ?a)))
     
     ;; allow for updating mail using 'U' in the main view:
     (setq mu4e-get-mail-command "offlineimap")
     
     ;; something about ourselves
     (setq
        user-mail-address "commanders2005@gmail.com"
        user-full-name  "Ming Chen"
        message-signature
         (concat
           "Ming Chen\n"
	   "Teaching Assitant\n"
           "Department of Mathematics\n"
	   "Univeresity of Texas at Dallas\n"))
     
     ;; sending mail -- replace USERNAME with your gmail username
     ;; also, make sure the gnutls command line utils are installed
     ;; package 'gnutls-bin' in Debian/Ubuntu
     
     (require 'smtpmail)
     (setq message-send-mail-function 'smtpmail-send-it
        starttls-use-gnutls t
        smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
        smtpmail-auth-credentials
          '(("smtp.gmail.com" 587 "commanders2005@gmail.com" nil))
        smtpmail-default-smtp-server "smtp.gmail.com"
        smtpmail-smtp-server "smtp.gmail.com"
        smtpmail-smtp-service 587)
     
     ;; alternatively, for emacs-24 you can use:
     ;;(setq message-send-mail-function 'smtpmail-send-it
     ;;     smtpmail-stream-type 'starttls
     ;;     smtpmail-default-smtp-server "smtp.gmail.com"
     ;;     smtpmail-smtp-server "smtp.gmail.com"
     ;;     smtpmail-smtp-service 587)
     
     ;; don't keep message buffers around
     (setq message-kill-buffer-on-exit t)
;;; configure color theme
;(add-to-list 'load-path "~/.emacs.d/color-theme-molokai")
;(require 'color-theme-molokai)
;(color-theme-molokai)
(add-to-list 'load-path "~/.emacs.d/Highlight-Indentation-for-Emacs/")
(require 'highlight-indentation)
(set-face-background 'highlight-indentation-face "#e3e3d3")
(set-face-background 'highlight-indentation-current-column-face "#c3b3b3")


;;;preserve everything after closing
(desktop-save-mode 1)
(setq history-length 500)
(add-to-list 'desktop-globals-to-save 'file-name-history)
   (setq desktop-buffers-not-to-save
        (concat "\\("
                "^nn\\.a[0-9]+\\|\\.log\\|(ftp)\\|^tags\\|^TAGS"
                "\\|\\.emacs.*\\|\\.diary\\|\\.newsrc-dribble\\|\\.bbdb"
	        "\\)$"))
   (add-to-list 'desktop-modes-not-to-save 'dired-mode)
   (add-to-list 'desktop-modes-not-to-save 'Info-mode)
   (add-to-list 'desktop-modes-not-to-save 'info-lookup-mode)
   (add-to-list 'desktop-modes-not-to-save 'fundamental-mode)

;;; Loading r-autoyas
(add-to-list 'load-path "~/.emacs.d/r-autoyas.el/")
(require 'r-autoyas)
(add-hook 'ess-mode-hook 'r-autoyas-ess-activate)
;; (r-autoyas-defined-p &optional WITH-PAREN)
;; (r-autoyas-ess-activate)
;; (r-autoyas-exit-snippet-delete-remaining)
;; (r-autoyas-expand &optional RM-PAREN)
;; (r-autoyas-paren)
;; (r-autoyas-wrap)
;; (autopair-r-autoyas-paren-action ACTION PAIR POS-BEFORE)
;; (r-autoyas-active-field-number &optional ARG)
;; (r-autoyas-editing-field-num-p &optional ARG)
;; (r-autoyas-generte-dotreplace-list-lisp FUNC)
;; (r-autoyas-m &rest OBJECTS)
;; (r-autoyas-namespace FUNCTION-NAME)
;; (r-autoyas-preloaded-namespace-p NAMESPACE)
;; (r-autoyas-text-on-moving-away DEFAULT-TEXT &optional ORIG-TEXT)
;; (r-autoyas-update)
;; (rayas-comma FIELD NUM)
;; (rayas-require-explicit-p NUM)
;; (rayas-space FIELD-NUMBER)


(require 'xml-rpc)

;;;org-mode to wordpress
;; (setq 'load-path (cons "~/.emacs.d/org2blog/" load-path))
;; (require 'org2blog-autoloads)

;; ;;;set auto-upload my blog

;; (setq org2blog/wp-blog-alist
;;        '(("wordpress"
;;           :url "http://commandes2005.wordpress.com/xmlrpc.php"
;;           :username "commanders2005"
;;           :default-title "Hello World"
;;           :default-categories ("org2blog" "emacs")
;;           :tags-as-categories nil)
;;          ("my-blog"
;;           :url "http://username.server.com/xmlrpc.php"
;;           :username "admin")))
;; (require 'netrc)
;; (setq blog (netrc-machine (netrc-parse "~/.netrc") "myblog" t))
;;  (setq org2blog/wp-blog-alist
;;        '(("my-blog"
;;           :url "http://username.server.com/xmlrpc.php"
;;           :username (netrc-get blog "login")
;;           :password (netrc-get blog "password"))))


;;;org mode setup


(define-skeleton org-skeleton
  "Header info for a emacs-org file."
  "Title: "
  "#+TITLE:" str " \n"
  "#+AUTHOR: Ming Chen\n"
  "#+email: commanders2005@gmail.com\n"
  "#+INFOJS_OPT: \n"
  "#+BABEL: :session *R* :cache yes :results output graphics :exports both :tangle yes \n"
  "-----"
 )
(global-set-key [f2] 'org-skeleton)

;;; ess-tracebug mode
(setq ess-use-tracebug t)
(setq ess-tracebug-prefix "\M-c")
(define-key ess-mode-map "\M-]" 'next-error)
  (define-key ess-mode-map "\M-[" 'previous-error)
  (define-key inferior-ess-mode-map "\M-]" 'next-error-no-select)
  (define-key inferior-ess-mode-map "\M-[" 'previous-error-no-select)

(define-key compilation-minor-mode-map [(?n)] 'next-error-no-select)
  (define-key compilation-minor-mode-map [(?p)] 'previous-error-no-select)


(require 'org-beamer)

(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(global-set-key (kbd "C-x <left>") 'windmove-left)

(add-to-list 'load-path "~/.emacs.d/rainbow-delimiters/")
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
(global-rainbow-delimiters-mode)


;;;; some org-mode binding


(add-hook 'org-mode-hook 
          (lambda ()
            (local-set-key "\M-n" 'outline-next-visible-heading)
            (local-set-key "\M-p" 'outline-previous-visible-heading)
            ;; table
            (local-set-key "\C-\M-w" 'org-table-copy-region)
            (local-set-key "\C-\M-y" 'org-table-paste-rectangle)
            (local-set-key "\C-\M-l" 'org-table-sort-lines)
            ;; display images
            (local-set-key "\M-I" 'org-toggle-iimage-in-org)
            ;; fix tab
            (local-set-key "\C-y" 'yank)))
;;; Display Image
;; -- Display images in org mode
;; enable image mode first
;(iimage-mode)
;; add the org file link format to the iimage mode regex
;; (add-to-list 'iimage-mode-image-regex-alist
;; (cons (concat "\\[\\[file:\\(~?" iimage-mode-image-filename-regex "\\)\\]") 1))
;; ;; add a hook so we can display images on load
;; (add-hook 'org-mode-hook '(lambda () (org-turn-on-iimage-in-org)))
;; ;; function to setup images for display on load
;; (defun org-turn-on-iimage-in-org ()
;; "display images in your org file"
;; (interactive)
;; (turn-on-iimage-mode)
;; (set-face-underline-p 'org-link nil))
;; ;; function to toggle images in a org bugger
;; (defun org-toggle-iimage-in-org ()
;; "display images in your org file"
;; (interactive)
;; (if (face-underline-p 'org-link)
;; (set-face-underline-p 'org-link nil)
;; (set-face-underline-p 'org-link t))
;; (call-interactively 'iimage-mode))


;; one key to init.el
(global-set-key (kbd "<f12>")
		(lambda()
		  (interactive)
		  (find-file "~/.emacs.d/init.el")))


(global-set-key (kbd "<f11>")
		(lambda()
		  (interactive)
		  (shell)))

(global-set-key (kbd "<f10>")
		(lambda()
		  (interactive)
		  (find-file "~/Dropbox/MobileOrg/calendar.org")))
		  
;;; One key rule them all

;;; (add-to-list 'load-path "~/.emacs.d/one-key/")
;; (require 'one-key)
;; (global-set-key (kbd "<menu>") 'one-key-open-associated-menu-set)

(add-to-list 'load-path "~/.emacs.d/evil")
(setq evil-toggle-key "C-`")
(require 'evil)
(add-to-list 'evil-emacs-state-modes 'nav-mode)
(add-to-list 'evil-emacs-state-modes 'DocView)
(add-to-list 'evil-emacs-state-modes 'undo-tree-visualizer)

;(evil-mode 1)

(setq desktop-load-locked-desktop t)


;;grant super permission


(defun kid-find-alternative-file-with-sudo () 
  (interactive) 
  (when buffer-file-name 
    (let ((point (point))) 
      (find-alternate-file 
       (concat "/sudo:root@localhost:" 
               buffer-file-name)) 
      (goto-char point)))) 
(global-set-key (kbd "C-x M-r") 'kid-find-alternative-file-with-sudo) 


;;; orgmode to wordpress

(add-to-list 'load-path "~/.emacs.d/org2blog")
(require 'org2blog-autoloads)
(require 'netrc)
(setq org2blog/wp-blog-alist
      '(("my-blog"
	 :url "http://mingochen.com/xmlrpc.php"
	 :username "commanders2005"
	 :password "Master2015!"
	 :keep-new-lines t
	 :confirm t
	 :wp-code nil
	 :default-title "Hello World"
	 :tags-as-categories nil)))

(setq org2blog/wp-buffer-template
  "#+DATE: %s
#+OPTIONS: toc:nil num:nil todo:nil pri:nil tags:nil ^:nil TeX:nil 
#+TAGS: 
#+CATEGORY:
#+PERMALINK: 
#+TITLE:
\n")



(defun orgblog()
  (interactive)
  (org2blog/wp-login)
  (org2blog/wp-new-entry))

(add-hook 'org-mode-hook '(lambda () 
			    (interactive)
			    (org2blog/wp-mode)
			    (local-set-key (kbd "<f6>") 'orgblog)))



;;; special block of orgmode
(require 'org-special-blocks)



;;autowrap the line
;;;(setq-default auto-fill-function 'do-auto-fill)
(setq global-visual-line-mode t)

;;reftex
(require 'reftex)
(add-hook 'Latex-mode-hook 'turn-on-reftex)
(add-hook 'latex-mode-hook 'turn-on-reftex)
;; add reftex to org-mode
(defun org-mode-reftex-setup ()
  (load-library "reftex")
  (and (buffer-file-name)
       (file-exists-p (buffer-file-name))
       (reftex-parse-all))
  (define-key org-mode-map (kbd "C-c )") 'reftex-citation))

(add-hook 'org-mode-hook 'org-mode-reftex-setup)
;; setup mobile org
(setq org-mobile-directory "~/Dropbox/MobileOrg")
;;display realtime
(display-time)
;;;bcc for myself
(setq mail-self-blind t)
(require 'smart-compile)
(global-set-key (kbd "<f6>") 'smart-compile)

;;cdlatex-environment
(add-hook 'org-mode-hook 'turn-on-org-cdlatex)

 ;; ;;cdlatex
;; (autoload 'cdlatex-mode "cdlatex" "CDLaTeX Mode" t)
;; (autoload 'turn-on-cdlatex "cdlatex" "CDLaTeX Mode" nil)
 
;; (setq cdlatex-math-modify-prefix [f7])
;; (setq cdlatex-math-symbol-prefix [f6])
 
;; (setq cdlatex-env-alist
;;       '(("axiom" "\\begin{axiom}\nAUTOLABEL\n?\n\\end{axiom}\n" nil)
;; 	("theorem" "\\begin{theorem}\nAUTOLABEL\n?\n\\end{theorem}\n" nil)))
 
;; (setq cdlatex-command-alist
;;  '(("axm" "Insert axiom env"   "" cdlatex-environment ("axiom") t nil)
;;    ("thr" "Insert theorem env" "" cdlatex-environment ("theorem") t nil)))
 
;; (setq cdlatex-math-symbol-alist
;;       '((?< ("\\leftarrow" "\\Leftarrow" "\\longleftarrow" "\\Longleftarrow"))
;; 	(?> ("\\rightarrow" "\\Rightarrow" "\\longrightarrow" "\\Longrightarrow"))
;; 	))
;; ;
;;pymacs
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-autoload "pymacs")

(require 'org-latex)
(unless (boundp 'org-export-latex-classes)
  (setq org-export-latex-classes nil))



(setq org-latex-to-pdf-process 
'("xelatex -interaction nonstopmode %f" 
"xelatex -interaction nonstopmode %f")) 


(require 'evil)
(evil-mode 1)
(require 'key-chord)
(key-chord-mode 1)
   (key-chord-define evil-normal-state-map "jk" 'evil-force-normal-state)
   (key-chord-define evil-visual-state-map "jk" 'evil-change-to-previous-state)
   (key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
   (key-chord-define evil-replace-state-map "jk" 'evil-normal-state)
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; (setq-default TeX-master nil)		

(setq org-latex-to-pdf-process
'("xelatex -interaction nonstopmode %f"
"xelatex -interaction nonstopmode %f"))
;; code执行免应答（Eval code without confirm）
(setq org-confirm-babel-evaluate nil)

(defun org-mode-article-modes ()
  (reftex-mode t)
  (and (buffer-file-name)
       (file-exists-p (buffer-file-name))
       (reftex-parse-all)))
(add-hook 'org-mode-hook
          (lambda ()
            (if (member "REFTEX" org-todo-keywords-1)
                (org-mode-article-modes))))
(unless (boundp 'org-export-latex-classes)
  (setq org-export-latex-classes nil))
(require 'orgarticle)


(require 'ess-R-object-tooltip)
;;outline

(defun turn-on-outline-minor-mode ()
(outline-minor-mode 1))

(add-hook 'LaTeX-mode-hook 'turn-on-outline-minor-mode)
(add-hook 'latex-mode-hook 'turn-on-outline-minor-mode)
(setq outline-minor-mode-prefix "C-c C-o") ; Or something else

;; tramp mode
(require 'tramp)
(setq tramp-default-method "ssh")
(setq tramp-chunksize 500)
(setq tramp-shell-prompt-pattern "^[^$>\n]*[#$%>] *\\(\[[0-9;]*[a-zA-Z] *\\)*")

;; Color theme 
(add-to-list 'load-path "~/.emacs.d/color-theme")
(add-to-list 'custom-theme-load-path "~/.emacs.d/color-theme/themes")
(require 'color-theme)
(setq color-theme-is-global t)
(color-theme-initialize)
(color-theme-tangotango)




(defun toggle-fullscreen ()
  "Toggle full screen on X11"
  (interactive)
  (when (eq window-system 'x)
    (set-frame-parameter
     nil 'fullscreen
     (when (not (frame-parameter nil 'fullscreen)) 'fullboth))))

(global-set-key [f8] 'toggle-fullscreen)

;; (add-to-list 'load-path "~/.emacs.d/emms/")
;; (require 'emms-setup)
;; (emms-standard)
;; (emms-default-players)
(setq browse-url-browser-function 'w3m-goto-url-new-session)
 
;;change w3m user-agent to android
(setq w3m-user-agent "Mozilla/5.0 (Linux; U; Android 2.3.3; zh-tw; HTC_Pyramid Build/GRI40) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.")
 
;;quick access hacker news
(defun hn ()
(interactive)
(browse-url "http://news.ycombinator.com"))
 
;;quick access reddit
(defun reddit (reddit)
"Opens the REDDIT in w3m-new-session"
(interactive (list
(read-string "Enter the reddit (default: psycology): " nil nil "psychology" nil)))
(browse-url (format "http://m.reddit.com/r/%s" reddit))
)
 
;;i need this often
(defun wikipedia-search (search-term)
"Search for SEARCH-TERM on wikipedia"
(interactive
(let ((term (if mark-active
(buffer-substring (region-beginning) (region-end))
(word-at-point))))
(list
(read-string
(format "Wikipedia (%s):" term) nil nil term)))
)
(browse-url
(concat
"http://en.m.wikipedia.org/w/index.php?search="
search-term
))
)
 
;;when I want to enter the web address all by hand
(defun w3m-open-site (site)
"Opens site in new w3m session with 'http://' appended"
(interactive
(list (read-string "inside.amazon.com" nil nil w3m-home-page nil )))
(w3m-goto-url-new-session
(concat "http://" site)))

;; Pymacs for PYthon
(add-to-list 'load-path "~/.emacs.d/Pymacs")
;; (require )

(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-autoload "pymacs")
(eval-after-load "pymacs"
 '(add-to-list 'pymacs-load-path "~/.emacs.d/pyinit"))

;; Add new emacs packages
(require 'package)
(add-to-list 'package-archives
	     '("elpa" . "http://tromey.com/elpa/"))
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))

<<<<<<< HEAD

;; Set up amazon tramp
(defun tamazonvm ()
  (interactive)
  (find-file "/ssh:mingche@mingche.desktop.amazon.com:~/"))

(defun tamazonubuntu ()
  (interactive)
  (find-file "/ssh:mingche@mingche.aka.amazon.com:~/"))

;; Return major-mode name of the buffer
(defun buffer-mode (buffer-or-string)
  "Returns the major mode associated with a buffer."
  (with-current-buffer buffer-or-string
    major-mode))

;; Evil disables some major modes
(add-to-list 'evil-emacs-state-modes 'nav-mode)
(add-to-list 'evil-emacs-state-modes 'undo-tree-visualizer-mode)
(add-to-list 'evil-emacs-state-modes 'doc-view-mode)


;; Auto refresh docview
(add-hook 'doc-view-mode-hook 'auto-revert-mode)
=======
;; Tramp-derectories
(defun tamazon ()
		  (interactive)
		  (find-file "/ssh:mingche@mingche.desktop.amazon.com:~/"))
>>>>>>> 6783a5bacddd55754feda1f3caea67585ab93b7a
