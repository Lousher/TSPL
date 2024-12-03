(define make-stack
  (lambda ()
    (let ([ls '()])
      (lambda (msg . args)
        (cond
          [(eqv? msg 'empty?) (null? ls)]
          [(eqv? msg 'push!) (set! ls (cons (car args) ls))]
          [(eqv? msg 'top) (car ls)]
          [(eqv? msg 'pop!) (set! ls (cdr ls))]
          [else "oops"])))))

(define make-stack
  (lambda ()
    (let ([ls '()])
      (lambda (msg . args)
	(case msg 
	  [('empty? 'mt?) (null? ls)]
	  ['push! (set! ls (cons (car args) ls))]
	  ['top (car ls)]
	  ['pop! (set! ls (cdr ls))]
	  [else "oops"])))))
