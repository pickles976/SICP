#lang sicp
(define (factorial n)

    (define (fact-iter product counter max-count)
        (if (> counter max-count)
            product
            (fact-iter (* counter product)
                (+ counter 1)
                max-count)))

    (fact-iter 1 1 n))

(factorial 4)