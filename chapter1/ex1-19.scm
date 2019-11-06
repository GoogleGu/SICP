(define (fib n) (fast-fib 1 0 0 1 n))

(define (is-even num) (= (remainder num 2) 0))

(define (fast-fib a b p q n)
    (cond 
        ((= n 0) b)
        ((is-even n) 
            (fast-fib 
                a
                b
                (+ (square p) (square q))
                (+ (* 2 p q)  (square q))
                (/ n 2)
            )
        )
        (else (fast-fib 
                (+ (* (+ p q) a) (* q b)) 
                (+ (* q a) (* p b)) 
                p 
                q 
                (- n 1)
              )
        )
    )
)


(fib 6)

