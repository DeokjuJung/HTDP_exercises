;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe6.6.6) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
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
;;(start 300 300)
;;(draw-a-circle (make-circle (make-posn 100 100) 10 'red))

;; Contract: distance-between : posn posn -> number

;; Purpose : to determine the distance between two posn
(define (distance-between a b)
  (sqrt (+ (sqr (- (posn-x a) (posn-x b)))
           (sqr (- (posn-y a) (posn-y b))))))

;; Tests:
;;(distance-between (make-posn 10 10) (make-posn 13 14))
;;"should be"
;;5

;; Contract: in-circle : circle posn -> boolean

;; Purpose : to determine whether or not the pixel is inside the circle
(define (in-circle c p)
  (<= (distance-between (circle-center c) p) (circle-radius c)))
         
;; Tests:
;;(in-circle (make-circle (make-posn 6 2) 1 'red) (make-posn 6 1.5))
;;"should be"
;;true
;;(in-circle (make-circle (make-posn 6 2) 1 'red) (make-posn 8 6))
;;"should be"
;;false

;; Contract: translate-circle : circle delta -> circle

;; Purpose : to get a circle whose center moves delta pixels to the right
(define (translate-circle c d)
  (make-circle (make-posn (+ (posn-x (circle-center c)) d)
                          (posn-y (circle-center c)))
               (circle-radius c)
               (circle-color c)))

;; Tests:
;;(translate-circle (make-circle (make-posn 10 10) 30 'red) 10)
;;"should be"
;;(make-circle (make-posn 20 10) 30 'red)

;; Contract : clear-a-circle : circle -> true

;; Purpose : to clear the corresponding circle on the canvas
(define (clear-a-circle c)
  (clear-circle (circle-center c) (circle-radius c) (circle-color c)))

;; Tests:
;;(start 300 300)
;;(draw-a-circle (make-circle (make-posn 100 100) 50 'yellow))
;;(clear-a-circle (make-circle (make-posn 100 100) 50 'yellow))

;; Contract: draw-and-clear-circle : circle -> true

;; Purpose : draws a circle, waits for a short time, and clears it
(define (draw-and-clear-circle c)
  (and (draw-a-circle c) (sleep-for-a-while 1) (clear-a-circle c)))

;; Tests:
;;(start 300 300)
;;(draw-and-clear-circle (make-circle (make-posn 100 100) 50 'yellow))

;; Contract: move-circle : number circle -> circle
;; to draw and clear a circle, translate it by delta pixels
(define (move-circle delta a-circle)
  (cond
    [(draw-and-clear-circle a-circle) (translate-circle a-circle delta)]
    [else a-circle]))

(start 200 200)
(draw-a-circle
 (move-circle 10
   (move-circle 10
     (move-circle 10
       (move-circle 10 (make-circle (make-posn 80 80) 50 'red))))))
