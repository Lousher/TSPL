(define list-ref
  (lambda (li n)
    (if (= 0 n)
      (car li)
      (list-ref (cdr li) (- n 1)))))

(define list-tail
  (lambda (li n)
    (if (= 0 n)
      li
      (list-tail (cdr li) (- n 1)))))
