#lang sicp
(define pi 3.14)
(define (square x) (* x x))
(define (area radius) (* pi (square radius)))
(area 10)