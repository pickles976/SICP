#lang sicp

(define dx 0.00001)

;; Takes in function g and returns the function:
;; lambda(x) -> (g(x+dx) - g(x)) / dx
(define (deriv g)
    (lambda (x)
        (/ (- (g (+ x dx)) (g x))
        dx)))

(define (cube x) (* x x x))

((deriv cube) 5)
