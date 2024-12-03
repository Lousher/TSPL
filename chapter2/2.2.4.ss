(car (car '((a b) (c d)))) => a
(cdr (car '((a b) (c d)))) => (b)
(car (cdr (car '((a b) (c d))))) => b

(car (cdr '((a b) (c d)))) => (c d)
(car (car (cdr '((a b) (c d))))) => c
(cdr (car (cdr '((a b) (c d))))) => (d)
(car (cdr (car (cdr '((a b) (c d)))))) => d



