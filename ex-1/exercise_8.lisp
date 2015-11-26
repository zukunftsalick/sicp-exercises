(define (square y)
	(* y y))

(define (cube-root-iter guess prev-guess y)
				(if (good-enough? guess prev-guess)
						guess
						(cube-root-iter (improve guess y) guess y)))

(define (improve guess y)
				(newton (/ y (square guess)) guess guess))

(define (newton x y z)
				(/ (+ x y z) 3))


(define (good-enough? guess previous-guess)
	(< (abs (- guess previous-guess))
		 0.001))

(define (cube-root y)
	(cube-root-iter 1.0 0.0 y))

(cube-root 1) 
(cube-root -8) 
(cube-root 27) 
(cube-root 64) 
(cube-root 0.001)
(cube-root 10000000000000)
