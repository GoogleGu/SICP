(define (f g)
  (g 2))

(f square)

(f (lambda (z) (* z (+ z 1))))

(f f)

; Error message: The object 2 is not applicable.
; (f f) becomes (f (f 2)) which in turn gives (f (2 2)). Since 2 is not a operator, 
; 2 is not an applicable object to be passed as g, thus raises the error