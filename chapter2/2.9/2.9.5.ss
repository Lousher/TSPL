(define emptyq?
  (lambda (q)
    (eq? (car q) (cdr q))))

(define getq
  (lambda (q)
    (if (emptyq? q)
      (errorr 'getq "empty queue")
      (car (car q)))))

(define delq!
  (lambda (q)
    (if (emptyq? q)
      (error 'delq! "empty queue")
      (set-car! q (cdr (car q))))))
