(define atom?
  (lambda (i)
    (and (not (pair? i))
	 (not (null? i)))))
