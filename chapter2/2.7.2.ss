(define shorter
  (lambda (x y)
    (if (> (length x) (length y))
      y
      x)))
