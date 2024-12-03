(define transpose
  (lambda (li)
    (let ([fir (map car li)]
	  [sec (map cdr li)])
      (cons fir sec))))
