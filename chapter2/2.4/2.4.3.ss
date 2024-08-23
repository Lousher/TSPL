(define a
  (let ([x 'a] [y 'b])
    (list (let ([u 'c]) (cons u y))
	  (let ([v 'd]) (cons x v)))))

(define b
  (let ([x '((a b) c)])
    (cons (let ([y (cdr x)])
	    (car y))
	  (let ([z (car x)])
	    (cons (let ([u (cdr z)])
		    (car u))
		  (cons (let ([v (car z)])
			  v)
			(cdr z)))))))
