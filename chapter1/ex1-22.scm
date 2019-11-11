(define (timed-prime-test n)
    (newline)
    (display n)
    (start-prime-test n (runtime))
)

(define (start-prime-test n start-time)
    (if (fast-prime? n 10)
        (report-prime (- (runtime) start-time))
        0
    )
)

(define (report-prime elaspe-time)
    (display " *** ")
    (display elaspe-time)
    1
)

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

(define (search-of-primes n start)
    (if (> n 0)
        ((search-of-primes (- n (timed-prime-test start)) (+ start 2)))
        
    )
)

(search-of-primes 3 100001)
