;; hard to understand

(define map/k
  (lambda (p ls k)
    (if (null? ls)
      (k '())
      (p (car ls)
	 (lambda (x)
	   (map/k p (cdr ls)
		  (lambda (ls) (k (cons x ls)))))))))

(define eciprocals
  (lambda (ls)
    (map/k (lambda (x k) (if (= x 0) "zero divided" (k (/ 1 x))))
	   ls
	   (lambda (x) x))))
