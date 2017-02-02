#lang racket

(define (square x) (* x x))

(square 2)

(map square '(1 2 3 4 5))

(define (reduce f z l)
  (if (null? l)
      z
      (f (car l) (reduce f z (cdr l)))))

(reduce + 0 (map square '(1 2 3 4 5)))