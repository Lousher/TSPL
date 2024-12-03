(define make-counter
  (lambda (init step)
    (let ([init init])
      (lambda ()
	(set! init (+ init step))
	init))))
