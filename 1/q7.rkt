#lang scheme

(require "p8-sum-of-squares.rkt")

(provide good-enough?)

(define (good-enough? old-guess new-guess)
  (< (abs (/ (- old-guess new-guess) old-guess)) 0.0001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))
