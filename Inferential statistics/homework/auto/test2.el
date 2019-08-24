(TeX-add-style-hook
 "test2"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("scrreprt" "a4paper")))
   (TeX-run-style-hooks
    "latex2e"
    "scrreprt"
    "scrreprt10"
    "amsthm"
    "mathtools"
    "dsfont")
   (TeX-add-symbols
    '("inner" 2))
   (LaTeX-add-amsthm-newtheorems
    "definition"
    "example"
    "proposition"))
 :latex)

