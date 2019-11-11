(define (expmod base exp m)
    (cond ((= exp 0) 1)
          ((even? exp)
            (remainder (square (expmod base (/ exp 2) m)) m))
          (else
            (remainder (* base (expmod base (- exp 1) m)) m))
    )
)

(define (fermat-test n a)
    (define (try-it a)
        (= (expmod a n n) a)
    )
    (cond 
        ((= a n) true)
        ((try-it a) (fermat-test n (+ a 1)))
        (else false)
    )
)

(define (slow-prime n)
    (fermat-test n 2)
)

(slow-prime 6601)