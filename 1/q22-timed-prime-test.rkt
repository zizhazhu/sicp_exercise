#lang sicp

(#%require "p33-prime.rkt")

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (search-for-primes n)
  (search-for-primes-iter n 0 3))

(define (search-for-primes-iter n i m)
  (if (< i m)
	(if (prime? n)
	  ((timed-prime-test n)
	   (search-for-primes-iter (+ n 2) (+ i 1) m))
	  (search-for-primes-iter (+ n 2) i m))))
