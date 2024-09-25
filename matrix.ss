(library
  (tspl matrix)
  (export
    make-matrix
    matrix?
    matrix-rows
    matrix-columns
    matrix-ref
    matrix-set!
    mul)
  (import
    (rnrs))

  (define make-matrix
    (lambda (rows columns)
      (do ([m (make-vector rows)]
	   [i 0 (+ i 1)])
	((= i rows) m)
	(vector-set! m i (make-vector columns)))))

  (define matrix?
    (lambda (x)
      (and (vector? x)
	   (> (vector-length x) 0)
	   (vector? (vector-ref x 0)))))

  (define matrix-rows
    (lambda (x)
      (vector-length x)))

  (define matrix-columns
    (lambda (x)
      (vector-length (vector-ref x 0))))

  (define matrix-ref
    (lambda (m i j)
      (vector-ref (vector-ref m i) j)))

  (define matrix-set!
    (lambda (m i j x)
      (vector-set! (vector-ref m i) j x)))

  (define mat-sca-mul
    (lambda (m x)
      (let* ([nr (matrix-rows m)]
	     [nc (matrix-columns m)]
	     [r (make-matrix nr nc)])
	(do ([i 0 (+ i 1)])
	  ((= i nr) r)
	  (do ([j 0 (+ i 1)])
	    ((= j nc)
	     (matrix-set! r i j (* x (matrix-ref m i j)))))))))

  (define mat-mat-mul
    (lambda (m1 m2)
      (let* ([nr1 (matrix-rows m1)]
	     [nr2 (matrix-rows m2)]
	     [nc2 (matrix-columns m2)]
	     [r (make-matrix nr1 nc2)])
	(unless (= (matrix-columns m1) nr2)
	  (match-error m1 m1))
	(do ([i 0 (+ i 1)])
	  ((= i nr1) r)
	  (do ([j 0 (+ j 1)])
	    ((= j nc2))
	    (do ([k 0 (+ k 1)]
		 [a 0 (+ a 
			 (* (matrix-ref m1 i k)
			    (matrix-ref m2 k j)))])
	      ((= k nr2)
	       (matrix-set! r i j a))))))))

  (define type-error
    (lambda (w)
      (assertion-violation
	'mul
	"not a number or matrix"
	w)))

  (define match-error
    (lambda (w1 w2)
      (assertion-violation
	'mul
	"incompatible operands" w1 w2)))

  (define mul
    (lambda (x y)
      (cond
	[(number? x)
	 (cond 
	   [(number? y) (* x y)]
	   [(matrix? y) (mat-sca-mul y x)]
	   [else (type-error y)])]
	[(matrix? x)
	 (cond
	   [(number? y) (mat-sca-mul x y)]
	   [(matrix? y) (mat-mat-mul x y)]
	   [else (type-error y)])]
	[else (type-error x)])))
  )