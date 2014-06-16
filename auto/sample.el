(TeX-add-style-hook "sample"
 (lambda ()
    (TeX-add-symbols
     "ds"
     "d"
     "thefootnote")
    (TeX-run-style-hooks
     "hyperref"
     "amssymb"
     "latexsym"
     "wasysym"
     "marvosym"
     "textcomp"
     "soul"
     "wrapfig"
     "float"
     "longtable"
     "fixltx2e"
     "fontenc"
     "T1"
     "inputenc"
     "utf8"
     "amsfonts"
     "graphicx"
     "final"
     "latex2e"
     "art10"
     "article"
     "10pt")))

