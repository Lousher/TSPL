;; a
(let ([item (* 3 a)])
  (+ (- item b)
     (+ item b)))

;; b
(let ([li (list a b c)])
  (cons (car li)
	(cdr li)))
