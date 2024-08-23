; ((car (cdr (list + - * /))) 17 5)
; eval first proc , then arguemtns
; proc is expression, eval expression
; eval first proc[car] is a procedure
; eval argunent, is expression (cdr ...)
; eval expression first proc[cdr] is a procedure
; eval argument (list + ...)
; eval expression, proc[list] is a procdure
; eval argument, + - * / is basic proc/atom
; (list + - * /) get meaning
; (cdr (list + - * /)) get meaning
; (car ...) get meaning
; eval as (- 17 5)
; eval to 12
