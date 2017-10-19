#lang scheme

(provide sum-of-squares)
(provide square)

(define (square x) (* x x))
(define (sum-of-squares x y)
  (+ (square x)
     (square y)))