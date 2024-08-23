(define even?
  (lambda (n)
    (if (= n 0) #t
      (odd? (- n 1)))))

(define odd?
  (lambda (n)
    (if (= n 0) #f
      (even? (- n 1)))))
