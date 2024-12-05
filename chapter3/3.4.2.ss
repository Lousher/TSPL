(define retry #f)

(define factorial
  (lambda (x)
    (let f ([x x] [k (lambda (x) x)])
      (if (= 0 x)
	(begin (set! retry k) (k 1))
	(f (- x 1) (lambda (y) (k (* x y))))))))
