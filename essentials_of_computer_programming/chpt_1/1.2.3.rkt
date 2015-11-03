#lang racket

; Remove the given symbol from a list of symbols

(define remove-first
  (lambda (s los)                                       ; lambda with two params (symbol, list of symbols)
    (if (null? los)                                     ; if the list is null
    '()                                                 ; just return an empty list
      (if (eqv? (car los) s)                            ; if the symbol matches the first element of the list
        (cdr los)                                       ; return the rest of the list
        (cons (car los) (remove-first s (cdr los))))))) ; otherwise build a new list

(remove-first 'x '(x x s)) ; '(x s)
(remove-first 's '(x x s)) ; '(x x)
(remove-first '4 '(4 x s)) ; '(x s)
