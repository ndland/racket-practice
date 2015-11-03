#lang racket

; A number is in S if n = 0, or n - 3 is in S

(define in-S?
  (lambda (n)
    (if (zero? n) #t      ; This is the base case
      (if (>= (- n 3) 0)  ; If n - 3 >= 0 then,
        (in-S? (- n 3))   ; Recursive call on itself
        #f))))            ; Otherwise false

(in-S? 3) ; #t
(in-S? 0) ; #t
(in-S? 4) ; #f
