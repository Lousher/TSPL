;; compose the same

(define caar
  (compose car car))

(define cdar
  (compose cdr car))
