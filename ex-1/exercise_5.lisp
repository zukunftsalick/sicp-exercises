(define (p) (p))

(define (test x y)
	(if (= x 0)
			0
			y))

(test 0 (p))

;; in mit-scheme, as it uses applicative-order evaluation, it will hang as p is infinitely redefined (expanded)
;; in normal-order evaluation, it fully expands the arguments to finally apply the operands, therefore
;; for the given test call, the return would be 0
