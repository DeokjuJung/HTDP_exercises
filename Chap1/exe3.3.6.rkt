;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe3.3.6) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Celsius->Fahrenheit : number -> number
;; to compute Fahrenheit degree for Celsius degree
(define (Celsius->Fahrenheit degree)
   (+ 32 (* degree 1.8)))

;; Fahrenheit->Celsius : number -> number
;; to compute Celsius degree for Fahrenheit degree
(define (Fahrenheit->Celsius degree)
   (* (- degree 32) (/ 5 9)))

;; I : number -> number
;; to convert a Fahrenheit temperature to Celsius and back
(define (I degree)
  (Celsius->Fahrenheit (Fahrenheit->Celsius degree)))

;; examples as tests
;;(Celsius->Fahrenheit 0) "should be" 32
;;(Celsius->Fahrenheit 100) "should be" 212
;;(Fahrenheit->Celsius 32) "should be" 0
;;(Fahrenheit->Celsius 212) "should be" 100
;;(I 0) "should be" 0
;;(I 80) "should be" 80
(I 32)