(fset 'table_calc
   "Gkkkk\C-c\C-cj\C-c\C-cj\C-c\C-cj\C-c\C-c")
(fset 'table-new-line
   [?o ?| ?| ?\C-u ?\M-! ?e ?c ?h ?o ?  ?- ?n ?  ?\' backspace ?` ?d ?a ?t ?e ?  ?\' ?+ ?% ?m ?- ?% ?d ?\' ?` return tab])

(spacemacs/set-leader-keys "o t c" 'table_calc)
(spacemacs/set-leader-keys "o t n l" 'table-new-line)
(provide 'my-macro)
