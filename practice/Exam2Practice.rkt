#lang racket
(#%provide (all-defined))
(#%require (lib "eopl.ss" "eopl"))

;You can compare the contents of this answer sheet with the answer sheet of the
;previous homework to infer what is generated automatically by define-datatype.
(define-datatype step step?
  (up-step (us number?))
  (down-step (ds number?))
  (left-step (ls number?))
  (right-step (rs number?))
  (seq-step (st step?) (st2 step?)))


;;to avoid needless duplication we will only implement one extractor to handle all the
;;simple steps, rather than 4. So this should take: up, down, left and right steps.
(define (single-step->n st)
  (cond
    [(not (step? st)) "Invalid arguments in: single-step->n --- expected: single-step? --- received: not-a-single-step"]
    [else (cases step st
                 (down-step (i) i)
                 (up-step (i) i)
                 (right-step (i) i)
                 (left-step (i) i)
                 (seq-step (st st2) "Invalid arguments in: single-step->n --- expected: single-step? received: not-a-single-step"))]))
