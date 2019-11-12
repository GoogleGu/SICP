(define (product term a next b)
    (if (> a b)
        1
        (* (term a) (product term (next a) next b))))

(define (iter-product term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (* (term a) result))))
    (iter a 1))

(define (inc x) (+ x 1))

(define (factorial n)
    (define (identity x) x)
    (product identity 1 inc n)
)

(define (f x)
    (/ (- (* x x) 1) (* x x)))

(define (next-odd x) (+ x 2))

(define (approx-pi n)
    (* (product f 3 next-odd n) 4.)
)

(approx-pi 15000)

(factorial 3)
