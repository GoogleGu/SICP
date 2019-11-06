(define (exp b n)
    (fast-exp 1 b n)
)

(define (fast-exp a b n)
    (cond 
        ((= n 1) (* a b))
        ((is-even n) (fast-exp a (* b b) (/ n 2)))
        (else (fast-exp (* a b) b (- n 1)))
    )
)

(define (is-even num)
    (= (remainder num 2) 0)
)

(exp 2 11)