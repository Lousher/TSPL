(define product-cps
  (lambda (f x)
    (cond
      [(null? x) (f 1)]
      [(= 0 (car x)) (f 0)]
      [else
	(product-cps
	  (lambda (t) (f (* t (car x))))
	  (cdr x))])))

(define product
  (lambda x
    (apply product-cps (list display x))))
