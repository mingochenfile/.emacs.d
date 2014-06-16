(TeX-add-style-hook
 "style"
 (lambda ()
    (TeX-run-style-hooks
     ""
     "fullpage"
     "amsmath"
     "amssymb")
    (TeX-add-symbols
     '("file" 1)
     '("school" 4)
     '("schoolwithcourses" 4)
     '("contact" 3)
     '("employer" 3)
     '("header" 1)
     '("area" 2)
     "lineunder"
     "bull")
    (LaTeX-add-environments
     "achievements")))

