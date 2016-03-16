;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe2.3.2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (sum-coins penny nickle dime quarter)
  (/ (+ penny (* 5 nickle) (* 10 dime) (* 25 quarter)) 100))

(sum-coins 2 0 0 0)
(sum-coins 0 3 0 0)
(sum-coins 0 0 2 0)
(sum-coins 0 0 0 1)
(sum-coins 12 43 12 7)