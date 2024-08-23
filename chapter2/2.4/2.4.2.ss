(let ([x 9])
  (* x 
     (let ([x (/ x 3)])
       (+ x x))))

(* 9 (+ 3 3))
;variable shadow works
