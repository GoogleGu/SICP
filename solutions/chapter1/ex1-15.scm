
(define (p x) (- (* 3 x) (* 4 (* x x x))))

(define (sine x)
    (if (< (abs x) 0.1)
        x
        (p (sine (/ x 3)))  ;This line is executed 5 times
    )
)

;This program is O(log_3^a) in time growth and space growth