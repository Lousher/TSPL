(define atom?
  (lambda (obj)
    (and (not (pair obj))
	 (not (null? obj)))))
