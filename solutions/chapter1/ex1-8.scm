(define (cube-root x)
    (cube-root-iter 1.0 0 x)
)

(define (cube-root-iter guess last-guess x)
    (if (good-enough guess last-guess)
        guess
        (cube-root-iter (improve guess x) guess x)
    )

)

(define (improve guess x)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3)
)

(define (good-enough guess last-guess)
    (< (abs (- (* guess guess) (* last-guess last-guess))) 0.001)
)

(improve 1 8)

(cube-root 8)
