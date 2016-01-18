; Exercise 1.13: Prove that Fib(n) is the closest integer to phi^n/5^(1/2),
; where phi = (1 + 5^(1/2))/2. Hint: Let psi = (1 − 5^(1/2))/2. Use induction
; and the definition of the Fibonacci numbers (see Section 1.2.2) to prove that
; Fib(n) = (phi^n − psi^n)/5^(1/2).

; n = 0

Fib(0) = (phi^0 − psi^0)/5^(1/2)
Fib(0) = (1 − 1)/5^(1/2)
Fib(0) = 0

; n = 1

Fib(1) = (phi − psi)/5^(1/2)
Fib(1) = ((1 + 5^(1/2))/2 − (1 − 5^(1/2))/2)/5^(1/2)
Fib(1) = 5^(1/2)/5^(1/2)
Fib(1) = 1

; n = k

Fib(k) = (phi^k − psi^k)/5^(1/2)
Fib(k-1) = (phi^(k-1) − psi^(k-1))/5^(1/2)

Fib(k+1) = Fib(k) + Fib(k-1)
Fib(k+1) = (phi^k − psi^k)/5^(1/2) + (phi^(k-1) − psi^(k-1))/5^(1/2)
Fib(k+1) = (phi^k − psi^k + phi^(k-1) − psi^(k-1))/5^(1/2)
Fib(k+1) = (phi^k + phi^(k-1) − (psi^(k-1) + psi^k))/5^(1/2)
Fib(k+1) = (phi^(k-1)(phi + 1) − (psi^(k-1)(psi + 1)))/5^(1/2)
Fib(k+1) = (phi^(k-1)phi^2 − psi^(k-1)psi^2)/5^(1/2) ; (*)
Fib(k+1) = (phi^(k+1) − psi^(k+1))/5^(1/2)

; (*)
phi+1 = phi^2
(1 + 5^(1/2))/2+1 = ((1 + 5^(1/2))/2)^2
(1 + 5^(1/2) + 2)/2 = (1 + 5^(1/2))(1 + 5^(1/2))/4
3 + 5^(1/2) = (1 + 5^(1/2))(1 + 5^(1/2))/2
3 + 5^(1/2) = (6 + 2*5^(1/2))/2
3 + 5^(1/2) = 3 + 5^(1/2)

psi+1 = psi^2
(1 - 5^(1/2))/2+1 = ((1 - 5^(1/2))/2)^2
(3 - 5^(1/2))/2 = (1 - 5^(1/2)(1 - 5^(1/2)/4
3 - 5^(1/2) = (1 - 5^(1/2)(1 - 5^(1/2)/2
3 - 5^(1/2) = (6 - 2*5^(1/2))/2
3 - 5^(1/2) = 3 - 5^(1/2)
