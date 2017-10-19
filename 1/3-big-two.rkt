#lang scheme

(require "p8-sum-of-squares.rkt")

(define (big-two x y z)
  (cond ((and (> x y) (> z y)) (sum-of-squares x z))
        ((and (> x z) (> y z)) (sum-of-squares x y))
        (else (sum-of-squares y z))))