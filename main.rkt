#lang racket

;; list.number-elements: List -> List(List(Int, Value))
;; usage: (list.number-elements lst) = mark each element of list as a pair of its index and value
(define list.number-elements
  (lambda (lst)
    (list.number-elements-from 0 lst)))

(define list.number-elements-from
  (lambda (n lst)
    (if (null? lst)
        '()
        (cons (list n (car lst))
              (list.number-elements-from (+ n 1) (cdr lst))))))

; s-list ::= ({s-exp}*)
; s-exp  ::= symbol | s-list

; s-list ::= ()
;        ::= (s-exp . s-list)
; s-exp  ::= symbol | s-list

; (.) = cons operator
