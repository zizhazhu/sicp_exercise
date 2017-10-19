#lang scheme

(require "p30-fast-expt.rkt")

(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(define (fast-mult a b)
  (fast-mult-iter 0 a b))

(define (fast-mult-iter product a b)
  (cond ((= b 0) product)
        ((even? b) (fast-mult-iter product (double a) (halve b)))
        (else (fast-mult-iter (+ product a) a (- b 1)))))