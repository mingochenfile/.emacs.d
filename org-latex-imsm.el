(add-to-list 'org-export-latex-classes 
	     '("imsm"
	       "\\documentclass[10pt]{article}
\\usepackage[final]{graphicx}
\\usepackage{amsfonts}

\\topmargin-.5in
\\textwidth6.6in
\\textheight9in
\\oddsidemargin0in

\\def\\ds{\displaystyle}
\\def\\d{\\partial}"
("\\section{%s}" . "\\section*{%s}")
("\\subsection{%s}" . "\\subsection*{%s}")
("\\subsubsection{%s}" . "\\subsubsection*{%s}")
("\\paragraph{%s}" . "\\paragraph*{%s}")
("\\subparagraph{%s}" . "\\subparagraph*{%s}")))



(provide 'org-latex-imsm)
