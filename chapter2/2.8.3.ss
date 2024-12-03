(define make-list
  (lambda (n i)
    (if (= 0 n)
      '()
      (cons i (make-list (- n 1) i)))))
