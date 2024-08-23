(define shorter
  (lambda (ls1 ls2)
    (let ([l1 (length ls1)]
	  [l2 (length ls2)])
      (if (<= l1 l2)
	ls1
	ls2))))
