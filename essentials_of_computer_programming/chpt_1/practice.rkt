#lang eopl

(define list-length
  (lambda (lst)
    (if (null? lst)
        0
        (+ 1 (list-length (cdr lst))))))


(define nth-element
  (lambda (lst n)
    (if (null? lst)
        (report-list-too-short n)
        (if (zero? n)
            (car lst)
            (nth-element (cdr lst) (- n 1))))))

(define report-list-too-short
  (lambda (n)
    (eopl:error 'nth-element
                "List too short by ~s elements.~%" (+ n 1))))

(define remove-first
  (lambda (s los)
    (if (null? los)
        '()
        (if (eqv? (car los) s)
            (cdr los)
            (cons (car los) (remove-first s (cdr los)))))))

(define list-sum
  (lambda (loi)
          (if (null? loi)
              0
              (+ (car loi)
                 (list-sum (cdr loi))))))

(define duple
  (lambda (x y)
    (if (zero? x)
        '()
        (cons y (duple (- x 1) y)))))
