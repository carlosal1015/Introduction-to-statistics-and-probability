(TeX-add-style-hook
 "laboratory1"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("exam" "a4paper")))
   (TeX-run-style-hooks
    "latex2e"
    "exam"
    "exam10"
    "mathtools")
   (LaTeX-add-labels
    "tab:grades"))
 :latex)

