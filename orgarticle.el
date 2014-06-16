;;; myarticle, org-latex-cn, imsm, cn-article



;;; myarticle
(add-to-list 'org-export-latex-classes '("myarticle"

"\\documentclass[11pt,letterpaper]{article}
\\usepackage[utf8]{inputenc}
\\usepackage[T1]{fontenc}
\\usepackage{graphicx} 
\\usepackage{lastpage}
\\usepackage{fancyhdr}
\\pagestyle{fancy}
\\usepackage{hyperref}
\\usepackage{amsmath}
\\usepacakge{amssymb}
\\hypersetup{colorlinks,linkcolor=blue}
\\renewcommand{\headrulewidth}{1pt}
\\renewcommand{\footrulewidth}{0.5pt}
\\usepackage{graphicx}
\\usepackage{multicol}
\\geometry{headheight=47pt}
\\def\ORGTITLE{Latex Notes}
\\def\ORGAUTHOR{Ming Chen}
\\fancyhead[L]{\LARGE \ORGTITLE  }
\\fancyhead[R]{\bf    \ORGAUTHOR }
\\fancyfoot[L]{\small \ORGTITLE\\ \today}
\\fancyfoot[C]{\small Revision: \Revision \\ Page \thepage\ of \pageref{LastPage}}
\\fancyfoot[R]{\small \ORGAUTHOR }
\\title{}
[NO-DEFAULT-PACKAGES]
      [NO-PACKAGES]"
     ("\\section{%s}" . "\\section*{%s}")
     ("\\subsection{%s}" . "\\subsection*{%s}")
     ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
     ("\\paragraph{%s}" . "\\paragraph*{%s}")
     ("\\subparagraph{%s}" . "\\subparagraph*{%s}")))



;;; org-export-latex-classes
(add-to-list 'org-export-latex-classes 
'("org-latex-cn" 

"\\documentclass[a4paper]{article}" \ 
"\\usepackage[unicode,dvipdfm]{hyperref}" \ 
"\\usepackage{graphicx}" \ 
"\\usepackage{xeCJK}" \ 
"\\setCJKmainfont{WenQuanYi Zen Hei}" \ 
"[NO-DEFAULT-PACKAGES]" \ 
"[NO-PACKAGES]" 

("\\section{%s}" . "\\section*{%s}") 
("\\subsection{%s}" . "\\subsection*{%s}") 
("\\subsubsection{%s}" . "\\subsubsection*{%s}") 
("\\paragraph{%s}" . "\\paragraph*{%s}") 
("\\subparagraph{%s}" . "\\subparagraph*{%s}"))) 









;;; imsm 
(add-to-list 'org-export-latex-classes 
	     '("imsm"
	       "\\documentclass[10pt]{article}
\\usepackage[final]{graphicx}
\\usepackage{amsfonts}
\\topmargin-.5in
\\textwidth6.6in
\\textheight9in
\\oddsidemargin0in
\\def\\ds{\\displaystyle}
\\def\\d{\\partial}
\\usepackage[colorlinks=true,linkcolor=black,anchorcolor=black,citecolor=black,filecolor=black,menucolor=black,runcolor=black,urlcolor=black]{hyperref}
\\usepackage[utf8]{inputenc}
\\usepackage[T1]{fontenc}
\\usepackage{fixltx2e}
\\usepackage{graphicx}
\\usepackage{longtable}
\\usepackage{float}
\\usepackage{wrapfig}
\\usepackage{soul}
\\usepackage{textcomp}
\\usepackage{marvosym}
\\usepackage{wasysym}
\\usepackage{latexsym}
\\usepackage{amssymb}
[NO-DEFAULT-PACKAGES]
      [NO-PACKAGES]"
("\\section{%s}" . "\\section*{%s}")
("\\subsection{%s}" . "\\subsection*{%s}")
("\\subsubsection{%s}" . "\\subsubsection*{%s}")
("\\paragraph{%s}" . "\\paragraph*{%s}")
("\\subparagraph{%s}" . "\\subparagraph*{%s}")))




;;;; Chinese article
(add-to-list 'org-export-latex-classes
             '("cn-article"
               "\\documentclass[10pt,a4paper]{article}
\\usepackage{graphicx}
\\usepackage{xcolor}
\\usepackage{xeCJK}
\\usepackage{lmodern}
\\usepackage{verbatim}
\\usepackage{fixltx2e}
\\usepackage{longtable}
\\usepackage{float}
\\usepackage{tikz}
\\usepackage{wrapfig}
\\usepackage{soul}
\\usepackage{textcomp}
\\usepackage{listings}
\\usepackage{geometry}
\\usepackage{algorithm}
\\usepackage{algorithmic}
\\usepackage{marvosym}
\\usepackage{wasysym}
\\usepackage{latexsym}
\\usepackage{natbib}
\\usepackage{fancyhdr}
\\usepackage[xetex,colorlinks=true,CJKbookmarks=true,
linkcolor=blue,
urlcolor=blue,
menucolor=blue]{hyperref}
\\usepackage{fontspec,xunicode,xltxtra}
\\setmainfont[BoldFont=WenQuanYi Zen Hei]{AR PL UMing CN}  
\\setsansfont[BoldFont=WenQuanYi Zen Hei]{AR PL UKai CN}  
\\setmonofont{Bitstream Vera Sans Mono}  
\\newcommand\\fontnamemono{AR PL UKai CN}%等宽字体
\\newfontinstance\\MONO{\\fontnamemono}
\\newcommand{\\mono}[1]{{\\MONO #1}}
\\setCJKmainfont[Scale=0.9]{WenQuanYi Zen Hei}%中文字体
\\hypersetup{unicode=true}
\\geometry{a4paper, textwidth=6.5in, textheight=10in,
marginparsep=7pt, marginparwidth=.6in}
\\definecolor{foreground}{RGB}{220,220,204}%浅灰
\\definecolor{background}{RGB}{62,62,62}%浅黑
\\definecolor{preprocess}{RGB}{250,187,249}%浅紫
\\definecolor{var}{RGB}{239,224,174}%浅肉色
\\definecolor{string}{RGB}{154,150,230}%浅紫色
\\definecolor{type}{RGB}{225,225,116}%浅黄
\\definecolor{function}{RGB}{140,206,211}%浅天蓝
\\definecolor{keyword}{RGB}{239,224,174}%浅肉色
\\definecolor{comment}{RGB}{180,98,4}%深褐色
\\definecolor{doc}{RGB}{175,215,175}%浅铅绿
\\definecolor{comdil}{RGB}{111,128,111}%深灰
\\definecolor{constant}{RGB}{220,162,170}%粉红
\\definecolor{buildin}{RGB}{127,159,127}%深铅绿
\\punctstyle{kaiming}
\\title{}
\\fancyfoot[C]{\\bfseries\\thepage}
\\chead{\\MakeUppercase\\sectionmark}
\\pagestyle{fancy}
\\tolerance=1000
[NO-DEFAULT-PACKAGES]
[NO-PACKAGES]"
("\\section{%s}" . "\\section*{%s}")
("\\subsection{%s}" . "\\subsection*{%s}")
("\\subsubsection{%s}" . "\\subsubsection*{%s}")
("\\paragraph{%s}" . "\\paragraph*{%s}")
("\\subparagraph{%s}" . "\\subparagraph*{%s}")))



(provide 'orgarticle)
