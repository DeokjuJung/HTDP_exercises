;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe6.2.3) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; dimensions of traffic light
(define WIDTH 50)
(define HEIGHT 160)
(define BULB-RADIUS 20)
(define BULB-DISTANCE 10)

;; the positions of the bulbs
(define X-BULBS (quotient WIDTH 2))
(define Y-RED (+ BULB-DISTANCE BULB-RADIUS))
(define Y-YELLOW (+ Y-RED BULB-DISTANCE (* 2 BULB-RADIUS)))
(define Y-GREEN (+ Y-YELLOW BULB-DISTANCE (* 2 BULB-RADIUS)))

;; draw the light with the red bulb turned on
(start WIDTH HEIGHT)
(draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
(draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
(draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)

;; clear-bulb : symbol -> boolean
;; to turn off the matching bulb in the traffic light
(define (clear-bulb color)
  (cond
    [(symbol=? color 'red) (and (clear-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS) (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red))]
    [(symbol=? color 'yellow) (and (clear-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS) (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow))]
    [(symbol=? color 'green) (and (clear-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS) (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green))]))

(clear-bulb 'red)

;; draw-bulb : symbol -> boolean
;; to turn on the matching bulb in the traffic light
(define (draw-bulb color)
  (cond
    [(symbol=? color 'red) (draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)]
    [(symbol=? color 'yellow) (draw-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)]
    [(symbol=? color 'green) (draw-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)]))

(draw-bulb 'green)
                              