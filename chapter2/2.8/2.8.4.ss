(define list-ref
  (lambda (li n)
    (if (= n 0) (car li)
      (list-ref (cdr li) (- n 1)))))

(define list-tail
  (lambda (li n)
    (if (= n 0) li
      (list-tail (cdr li) (- n 1)))))
