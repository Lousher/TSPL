;; a
(let ([x 'a] [y 'b])
  (list (let ([m 'c]) (cons m y))
	(let ([n 'd]) (cons x n))))

;; b
(let ([x '((a b) c)])
  (cons (let ([y (cdr x)])
	  (car y))
	(let ([m (car x)])
	  (cons (let ([n (cdr m)])
		  (car n))
		(cons (let ([z (car m)])
			z)
		      (cdr m))))))
