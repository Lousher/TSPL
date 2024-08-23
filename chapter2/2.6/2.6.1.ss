(define double-any
  (lambda (f x)
    (f x x)))

;(double-any[origin] double-any[f] double-any[x]) =>
;(double-any[f] double-any[x] double-any[x])
; will be eternal loop
