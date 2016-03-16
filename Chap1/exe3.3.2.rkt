;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe3.3.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; volume-cylinder : number number -> number
;; to compute the volume of a cylinder, given the radius
;; of the cylinder's base disk and its hegiht
(define (volume-cylinder radius height)
  (* (area-of-disk radius) height))

;; area-of-disk : number -> number
;; to compute the area-of-disk given the radius
(define (area-of-disk radius)
  (* pi radius radius))

;; examples as tests
(volume-cylinder 1 2) "should be" (* 2 pi)