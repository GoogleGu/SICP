

(define (smallest-divisor n)
    (divide-iter 2 n)
)

(define (divide-iter divisor n)
    (cond
        ((> (square divisor) n) n)
        ((= (remainder n divisor) 0) divisor)
        (else (divide-iter (next divisor) n))
    )
)

(define (next n)
    (if (= n 2)
        3
        (+ n 2))
)