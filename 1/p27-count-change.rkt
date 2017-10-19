#lang scheme

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))

(define (count-change amount)
  (cc amount 5))

(define (cc amount kinds)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kinds 0)) 0)
        (else (+ (cc amount (- kinds 1))
                 (cc (- amount (first-denomination kinds)) kinds)))))
