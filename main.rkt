#lang racket

;; number-elements: List -> List(List(Int, Value))
;; usage: (number-elements lst) = mark each element of list as a pair of its index and value
(define number-elements
  (lambda (lst)
    (number-elements-from 0 lst)))

(define number-elements-from
  (lambda (n lst)
    (if (null? lst)
        '()
        (cons (list n (car lst))
              (number-elements-from (+ n 1) (cdr lst))))))

; s-list ::= ({s-exp}*)
; s-exp  ::= symbol | s-list

; s-list ::= ()
;        ::= (s-exp . s-list)
; s-exp  ::= symbol | s-list

; (.) = cons operator