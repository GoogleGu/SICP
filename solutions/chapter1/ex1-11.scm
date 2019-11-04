(define (recursive-f n)
    (if (< n 3)
        n
        (+ (recursive-f (- n 1)) (* 2 (recursive-f (- n 2))) (* 3 (recursive-f (- n 3))))
    )
)

(define (f a b c count)
    (if (= count 0)
        c
        (f (+ a (* 2 b) (* 3 c)) a b (- count 1))
    )
)

(define (iter-f n)
    (f 2 1 0 n)
)

(recursive-f 10)
(iter-f 10)