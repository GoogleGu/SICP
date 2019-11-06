(define (sum-larger-squares a b c)
  (cond ((and (<= a b) (<= a c)) (+ (* b b) (* c c)))
        ((and (<= b a) (<= b c)) (+ (* a a) (* c c)))
        (else (+ (* a a) (* b b)))))

(sum-larger-squares 5 3 2)