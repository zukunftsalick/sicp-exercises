(define (square x) 
	(* x x))

(define (find-greatest-two a b c)
	(if (>= a b)
		(square-sum a (if (>= b c) b c))
		(square-sum b (if (>= a c) a c))))

(define (square-sum a b) 
	(+ (square a) (square b)))

(find-greatest-two 2 3 4)
(find-greatest-two 4 2 3)
(find-greatest-two 3 4 2)
