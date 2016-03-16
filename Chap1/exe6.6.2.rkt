;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe6.6.2) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; Data Analysis & Definitions:
(define-struct circle (center radius color))

;; A circle is a structure: (make-circle center radius color)
;; where center is a posn structure, radius is a number and color is a symbol.

#|
;; Template:
(define (fun-for-circle a-circle)
 ... (circle-center a-circle) ...
 ... (circle-radius a-circle) ...
 ... (circle-color a-circle) ...)
|#

;; Contract: draw-a-circle : circle -> true

;; Purpose: to draw a circle on the screen
(define (draw-a-circle a-circle)
  (draw-circle (circle-center a-circle)
               (circle-radius a-circle)
               (circle-color a-circle)))

;; Tests:
(start 300 300)
(draw-a-circle (make-circle (make-posn 100 100) 10 'red))