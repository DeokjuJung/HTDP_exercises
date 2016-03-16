;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe4.2.3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; equation1 : number -> boolean
;; to determine whether n is a solution for 4*n + 2 = 62
(define (equation1 n)
  (= (+ (* 4 n) 2) 62))
(equation1 15)

;; equation2 : number -> boolean
;; to determine whether n is a solution for 2*n**2 = 102
(define (equation2 n)
  (= (* 2 (* n n)) 102))

;; equation3 : number -> boolean
;; to determine whether n is a solution for 4*n**2 + 6*n + 2 = 462
(define (equation3 n)
  (= (+ (* 4 (* n n)) (+ (* 6 n) 2)) 462))