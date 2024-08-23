; sample
(define caaar
  (compose
    car
    (compose 
      car
      car)))

(define caaar
    (fold-right
      (lambda (next proc)
        (compose next proc))
      car
      (list car car)))
