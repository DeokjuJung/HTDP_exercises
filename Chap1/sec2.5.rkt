;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname sec2.5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define (area-of-disk radius)
  (* 3.14 radius radius))
;; area-of-ring : number number -> number
;; to compute the area of a ring whose radius is
;; outer and whose hole has a radius of inner
;; example: (area-of-ring 5 3) should produce 50.24
(define (area-of-ring outer inner)
  (- (area-of-disk outer)
     (area-of-disk inner)))

(= (area-of-ring 5 3) 50.24)