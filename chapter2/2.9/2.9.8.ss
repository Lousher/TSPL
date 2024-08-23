(define race
  (lambda (hare tort)
    (if (pair? hare)
      (let ([hare (cdr hare)])
	(if (pair hare)
	  (and (not (eq? hare tore))
	       (race (cdr hare) (cdr tort)))
	  (null? hare)))
      (null? hare))))
