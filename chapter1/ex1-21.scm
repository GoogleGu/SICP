(define (smallest-divisor n)
    (divide-iter 2 n)
)

(define (divide-iter divisor n)
    (cond
        ((> (square divisor) n) n)
        ((= (remainder n divisor) 0) divisor)
        (else (divide-iter (+ divisor 1) n))
    )
)

(smallest-divisor 199)
(smallest-divisor 1999)
(smallest-divisor 19999)