;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe3.3.5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; height : number number -> number
;; to compute the height that a rocket reaches in a given amount of time
;; and acceleration 
(define (height acceleration time)
  (* 0.5 (speed acceleration time) time))

;; speed : number number -> number
;; to compute the speed that a rocket reaches in a give amount of time and
;; acceleration
(define (speed acceleration time)
  (* acceleration time))


;; examples as tests
(speed 4 2) "should be" 8
(speed 3 5) "should be" 15
(height 4 2) "should be" 8
(height 3 5) "should be" 37.5
(height 10 10) "should be" 500