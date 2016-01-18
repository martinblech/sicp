; Exercise 1.3: Define a procedure that takes three numbers as arguments and
; returns the sum of the squares of the two larger numbers.

(define (two-larger-square-sum a b c)
  (define (square-sum a b)
    (+ (* a a) (* b b)))
  (cond ((and (< c a) (< c b)) (square-sum a b))
        ((and (< b a) (< b c)) (square-sum a c))
        (else (square-sum b c))))

(= 13
   (two-larger-square-sum 1 2 3)
   (two-larger-square-sum 1 3 2)
   (two-larger-square-sum 2 3 1)
   (two-larger-square-sum 2 1 3)
   (two-larger-square-sum 3 2 1)
   (two-larger-square-sum 3 1 2))
