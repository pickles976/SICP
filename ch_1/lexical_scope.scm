#lang sicp

(define (square x) (* x x))

(define (abs x)
    (if (< x 0) (- x) x))

(define (sqrt x)

    (define (good-enough? guess x)
        (< (abs (- (square guess) x)) 0.001))

    (define (improve guess x) 
        (average guess (/ x guess)))

    (define (sqrt-iter guess x)
        (if (good-enough? guess x)
            guess
            (sqrt-iter (improve guess x)
                x)))

    (sqrt-iter 1.0 x))

(sqrt 9)
(sqrt 2)