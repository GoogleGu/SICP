(define (inc x)
  (+ x 1))
 
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (integral f a b dx)
  (define (add-dx x) (+ x dx))
  (* (sum f (+ a (/ dx 2.0)) add-dx b)
     dx))

(define (simpson-integral f a b n)
  (let ((h (/ (- b a) n)))
    (define (term k)  
      (let ((y (f (+ a (* k h)))))
        (cond ((or (zero? k)
                   (= k n)) y)
              ((even? k) (* 2 y))
              (else (* 4 y)))))
    (* (/ h 3)
       (sum term 0 inc n))))

(define (cube x)
  (* x x x))

(integral cube 0 1 0.1)

(simpson-integral cube 0 1 1000)