; Exercise 1.11: A function f is defined by the rule that f (n) = n if n < 3 and
; f (n) = f (n − 1) + 2f (n − 2) + 3f (n − 3) if n ≥ 3. Write a procedure that
; computes f by means of a recursive process. Write a procedure that computes f
; by means of an iterative process.

; Recursive:
(define (f-rec n)
  (if (< n 3)
    n
    (+ (f-rec (- n 1))
       (* 2 (f-rec (- n 2))) 
       (* 3 (f-rec (- n 3))))))

; Iterative:
(define (f n)
  (define (f-iter a b c count)
    (if (= count 0)
      c
      (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))
  (f-iter 2 1 0 n))

(= (f-rec 0) (f 0))
(= (f-rec 1) (f 1))
(= (f-rec 2) (f 2))
(= (f-rec 3) (f 3))
(= (f-rec 10) (f 10))
