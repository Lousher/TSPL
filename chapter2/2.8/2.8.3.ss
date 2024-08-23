(define make-list
  (lambda (n item)
    (if (= n 0) '()
      (cons item (make-list (- n 1) item)))))
