#lang scheme

(require "p8-sum-of-squares.rkt")
(require "q7.rkt")

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (curt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (curt-iter (improve guess x)
                 x)))

(define (curt x)
  (curt-iter 1.0 x))