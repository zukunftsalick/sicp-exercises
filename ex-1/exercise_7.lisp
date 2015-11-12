(define (sqrt-iter guess x)
	(if (good-enough? guess x)
			guess
			(sqrt-iter (improve guess x)
									x)))
(define (improve guess x)
	(average guess (/ x guess)))

(define (average x y)
	(/ (+ x y) 2))

(define (good-enough? guess x)
	(< (abs 
				(- (square guess) 
						x))
		 0.001))

(define (sqrt x)
	(sqrt-iter 1.0 x))

(sqrt 0.001)
;; doesn't return the right answer because we stop guessing the square root when it's within range
;; of 0.001

(sqrt 1000000000000)
;; it hangs on my machine for more than 13 zeros. Why? not very clear to me
;; TODO read about the nature of floating-point numbers

