;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe2.3.1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (tax pay)
  (* pay 0.15))
(define (netpay h)
  (* 12 h))