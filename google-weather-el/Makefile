# Makefile - for google-weather emacs package.
# a lot of this is borrowed from org-mode's Makefile

##----------------------------------------------------------------------
##  YOU MUST EDIT THE FOLLOWING LINES
##----------------------------------------------------------------------

# Name of your emacs binary
EMACS = emacs

# Where local software is found
PREFIX = /usr/local

# Where local lisp files go.
LISPDIR = $(PREFIX)/share/emacs/site-lisp

# How to create directories
MKDIR = mkdir -p

# How to copy the lisp files and elc files to their distination.
CP = cp -p

##----------------------------------------------------------------------
##  YOU SHOULDN'T NEED TO EDIT THE FOLLOWING LINES
##----------------------------------------------------------------------

BATCH=$(EMACS) -batch -q -no-site-file -eval \
  '(setq load-path (cons (expand-file-name ".") load-path))'

SRCS = google-weather org-google-weather
ELS = $(foreach x,$(SRCS),$x.el)
ELCS = $(ELS:.el=.elc)

LOADDEF_SRCS = org-google-weather
LOADDEFS = $(foreach x, $(LOADDEF_SRCS), $x-loaddefs.el)

all: $(ELCS) $(LOADDEFS)


%.elc: %.el
	@echo "[C] $<"
	@$(BATCH) -f batch-byte-compile "$<"

%-loaddefs.el: %.el
	@$(BATCH) --eval "(require 'autoload)" \
                  --eval '(find-file (expand-file-name "$@"))' \
                  --eval '(erase-buffer)' \
                  --eval '(generate-file-autoloads (expand-file-name "$<"))' \
                  --eval '(insert "\n(provide (quote $*-loaddefs))\n")' \
                  --eval '(save-buffer)'

install: $(ELS) $(ELCS) $(LOADDEFS)
	[ -d $(LISPDIR) ] || $(MKDIR) $(LISPDIR)
	$(CP) $(ELS) $(LISPDIR)
	$(CP) $(ELCS) $(LISPDIR)
	$(CP) $(LOADDEFS) $(LISPDIR)

clean:
	rm -fr $(ELCS)
	rm -fr $(LOADDEFS)
