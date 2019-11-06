(define (pascal row col)
    (cond ((= row 1) 1)
          ((= col 1) 1)
          ((= row col) 1)
          (else (+ (pascal (sub1 row) (sub1 col))
                   (pascal (sub1 row) col))
          )
    
    )
)

(define (sub1 number)
    (if (= number 1)
        1
        (- number 1)
    )
)

(pascal 5 3)