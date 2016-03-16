;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe3.3.4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; area-pipe-single-def : number number -> number
;; to compute the surface area of a pipe which is open cylinder
(define (area-pipe-single-def inner-radius height thickness)
  (+ (* 2 (- (* pi (+ inner-radius thickness) (+ inner-radius thickness))
             (* pi inner-radius inner-radius)))
     (* height (* 2 pi (+ inner-radius thickness)))
     (* height (* 2 pi inner-radius))
  )
)

;; area-pipe : number number -> number
;; to compute the surface area of a pipe which is open cylinder
(define (area-pipe inner-radius height thickness)
  (+ (area-cylinder-side inner-radius height)
     (area-cylinder-side (outer-radius inner-radius thickness) height)
     (* 2 (area-of-ring (outer-radius inner-radius thickness) inner-radius))))

;; area-cylinder-side : number number -> number
;; to compute the area of a cylinder side
(define (area-cylinder-side radius height)
  (* (circumference-of-disk radius) height))

;; area-of-disk : number -> number
;; to compute the area of disk given the radius
(define (area-of-disk radius)
  (* pi radius radius))

;; area-of-ring : number number -> number
;; to compute the area of ring
(define (area-of-ring outer inner)
  (- (area-of-disk outer)
     (area-of-disk inner)))

;; circumstance-of-disk : number -> number
;; to compute the circumstance of a disk
(define (circumference-of-disk radius)
  (* 2 pi radius))

;; outer-radius : number number -> number
;; to compute the outer radius
(define (outer-radius radius thickness)
  (+ radius thickness))
  
;; examples as tests
(area-of-disk 4) "should be" (* 16 pi)
(area-of-ring 3 1) "should be" (* 7 pi)
(circumference-of-disk 3) "should be" (* 6 pi)
(circumference-of-disk 4) "should be" (* 8 pi)
(outer-radius 3 1) "should be" 4
(area-cylinder-side 4 10) "should be" (* 80 pi)
(area-cylinder-side 3 10) "should be" (* 60 pi)
(area-pipe 3 10 1) "should be" (* 154 pi)
(area-pipe 2 3 4) "should be" (* 112 pi)
(area-pipe-single-def 2 3 4) "should be" (* 112 pi)