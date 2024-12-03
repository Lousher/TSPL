(define shorter?
  (lambda (a b)
    (cond
      [(null? a) #t]
      [(null? b) #f]
      [else (shorter? (cdr a) (cdr b))])))

(define shorter
  (lambda (a b)
    (if (shorter? a b) a b)))
