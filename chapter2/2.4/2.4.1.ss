(define a
  (let ([part (* 3 'a)])
    (+ (- part b)
       (+ part b))))

(define b
  (let ([part (list a b c)])
    (cons (car part)
	  (cdr part))))
