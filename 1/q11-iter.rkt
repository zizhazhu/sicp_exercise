#lang scheme

(define (f n)
  (if (< n 3)
      n
      (f-iter 2 1 0 n)))

(define (f-iter a b c n)
  (if (= n 2)
      a
      (f-iter (+ a (* b 2) (* c 3)) a b (- n 1))))
