(define (accumulate combiner null-value filter term a next b)
    (if (> a b)
        null-value
        (combiner (term a) (if (filter a) 
                               (accumulate combiner null-value filter term (next a) next b)
                               null-value))))

(define (plus a b) (+ a b))
(define (mul a b) (* a b))
(define (inc x) (+ x 1))
(define (identity x) x)

(define (expmod base exp m)
    (cond 
        ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m)) m))
        (else
         (remainder (* base ( expmod base (- exp 1) m)) m)
        )
    )
)

(define (fermat-test n)
    (define (try-it a)
        (= (expmod a n n) a)
    )
    (try-it (+ 1 (random (- n 1))))
)

(define (fast-prime? n times)
    (cond 
        ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))    
        (else false)
    )
)

(define (prime? n)
    (fast-prime? n 10)
)

(define (prime-squares a b)
    (accumulate plus 0 prime? square a inc b))


(prime-squares 2 5)