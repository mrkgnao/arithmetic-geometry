(TeX-add-style-hook
 "complex-analysis"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("subfiles" "../main.tex")))
   (TeX-run-style-hooks
    "latex2e"
    "subfiles"
    "subfiles10")
   (LaTeX-add-labels
    "sec:holomorphy"
    "def:holomorphic"
    "def:entire"
    "sec:zeroes-and-poles"))
 :latex)

