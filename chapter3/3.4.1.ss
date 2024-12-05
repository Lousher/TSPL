(define reciprocal
  (lambda (n success failure)
    (if (= 0 n)
      (failure)
      (success (/ 1 n)))))
