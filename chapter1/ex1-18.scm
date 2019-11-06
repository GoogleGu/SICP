(define (is-even num)
    (= (remainder num 2) 0)
)

(define (double n) (+ n n))

(define (halve n) (/ n 2))

(define (multi a b)
    (cond 
        ((= b 0) 0)
        ((is-even b) (double (multi a (halve b)))
        (else (+ b (multi a (- b 1)))
    )
)
