(define make-stack
  (lambda (n)
    (let ([v (make-vector n)]
	  [i -1])
      (lambda (msg . args)
	(case msg
	  ([empty? mt?] (= i -1))
	  ([push!] (set! i (+ i 1)) (vector-set! v i (car args)))
	  ([top] (vector-ref v i))
	  ([pop!] (set! i (- i 1)))
	  ([ref] (vector-ref v (- i (car args))))
	  ([set!] (vector-set! v (- i (car args))
			       (cadr args)))
	  (else "ERROR!"))))))
