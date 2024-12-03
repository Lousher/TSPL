(define doubler
  (lambda (f)
    (lambda (x) (f x x))))

(define double-any
  (lambda (f x)
    ((doubler f) x)))

infinity loop
