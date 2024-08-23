; do not using length, but a helper func shorter?
(define shorter?
  (lambda (li1 li2)
    (cond 
      ([and (null? li1) (null? li2)] #t)
      ([null? li1] #t)
      ([null? li2] #f)
      (else
	(shorter? (cdr li1) (cdr li2))))))

;other usage is the same
