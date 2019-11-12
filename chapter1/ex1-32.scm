(define (accumulate combiner null-value term a next b)
    (if (> a b)
        null-value
        (combiner (term a) (accumulate combiner null-value term (next a) next b)))
)

(define (iter-accumulate combiner null-value term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (combiner (term a) result))))
    (iter a null-value)
)

(define (plus a b) (+ a b))
(define (mul a b) (* a b))
(define (inc x) (+ x 1))
(define (identity x) x)

(iter-accumulate plus 0 identity 1 inc 5)
