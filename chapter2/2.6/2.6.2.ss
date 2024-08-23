(define compose
  (lambda (f g)
    (lambda (x)
      (f (g x)))))

(define cadr
  (compose car cdr))

(define cddr
  (compose cdr cdr))
