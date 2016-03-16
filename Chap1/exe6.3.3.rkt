;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe6.3.3) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
(define-struct jetfighter (designation acceleration topspeed range))

;; within-range : jetfighter number -> boolean
;; to determine whether the fighter can reach the intended target
(define (within-range fighter range)
  (>= (jetfighter-range fighter) range))

;; Examples
(within-range (make-jetfighter 'f22 20 1000 1400) 1000)
"should be" true
(within-range (make-jetfighter 'mig22 20 1200 1500) 1800)
"should be" false

;; reduce-range : jetfigher -> jetfighter
(define (reduce-range fighter)
  (make-jetfighter (jetfighter-designation fighter)
                   (jetfighter-acceleration fighter)
                   (jetfighter-topspeed fighter)
                   (* (jetfighter-range fighter) .80)))

;; Examples
(reduce-range (make-jetfighter 'f22 20 1200 2000))
"should be"
(make-jetfighter 'f22 20 1200 1600)
