(define (sqrt-iter guess x)
	(new-if (good-enough? guess x)
			guess
			(sqrt-iter (improve guess x)
									x)))
(define (improve guess x)
	(average guess (/ x guess)))

(define (average x y)
	(/ (+ x y) 2))

(define (good-enough? guess x)
	(< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
	(sqrt-iter 1.0 x))

(sqrt 9)

(sqrt 121)


(define (new-if predicate then-clause else-clause)
	(cond (predicate then-clause)
				(else else-clause)))

;; with the new-if, it will also execute (sqrt-iter) code from the else clause, therefore causing
;; the loop. Not entirely sure why.
