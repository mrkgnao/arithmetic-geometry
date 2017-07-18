(TeX-add-style-hook
 "preamble"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("memoir" "a4paper" "12pt" "oneside")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("eulervm" "euler-digits" "euler-hat-accent") ("microtype" "protrusion=true" "expansion=true")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "memoir"
    "memoir12"
    "amsmath"
    "amssymb"
    "amsfonts"
    "mathrsfs"
    "amsthm"
    "varioref"
    "hyperref"
    "cleveref"
    "tikz"
    "xcolor"
    "eulervm"
    "palatino"
    "microtype"
    "subfiles"))
 :latex)

