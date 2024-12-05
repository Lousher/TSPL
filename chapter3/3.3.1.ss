;; infinite increment
(define increment 
  (lambda ()
    (call/cc (lambda (k)
	       (let next ([n 0])
		 (display n)
		 (sleep (make-time 'time-duration 1 1))
		 (newline)
		 (k (next (+ n 1))))
	       (next "holder")))))
