;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe3.3.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define CM-PER-INCH 2.54)
(define INCHES-PER-FOOT 12)
(define FEET-PER-YARD 3)
(define YARDS-PER-ROD 5.5)
(define RODS-PER-FURLONG 40)
(define FURLONGS-PER-MILE 8)

;; inches->cm : number -> number
;; to convert inches to cm
;; examples : (inches->cm 1) should be 2.54
(define (inches->cm length)
  (* CM-PER-INCH length))

;; feet->inches : number -> number
;; to convert feet to inches
;; examples : (feet->inches 1) should be 12
(define (feet->inches length)
  (* INCHES-PER-FOOT length))

;; yards->feet : number -> number
;; to convert yards to feet
;; examples : (yards->feet 1) should be 3
(define (yards->feet length)
  (* FEET-PER-YARD length))

;; rods->yards : number -> number
;; to convert rods to yards
;; examples : (rods->yards 1) should be 5.5
(define (rods->yards length)
  (* YARDS-PER-ROD length))

;; furlongs->rods : number -> number
;; to convert furlons to rods
;; examples : (furlongs->rods 1) should be 40
(define (furlongs->rods length)
  (* RODS-PER-FURLONG length))

;; miles->furlongs : number -> number
;; to convert miles to furlongs
;; examples : (miles->furlongs 1) should be 8
(define (miles->furlongs length)
  (* FURLONGS-PER-MILE length))

;; feet->cm : number -> number
;; to convert feet to cm
;; examples : (feet->cm 1) should be 30.48
(define (feet->cm length)
  (inches->cm (feet->inches length)))

;; yards->cm : number -> number
;; to convert yards to cm
;; examples : (yards->cm 1) should be 91.44
(define (yards->cm length)
  (feet->cm (yards->feet length)))

;; rods->inches : number -> number
;; to convert rods to inches
;; examples : (rods->inches 1) should be 198
(define (rods->inches length)
  (feet->inches (yards->feet (rods->yards length))))

;; miles->feet : number -> nubmer
;; to convert miles to feet
;; examples : (miles->feet 1) should be 5280
(define (miles->feet length)
  (yards->feet (rods->yards (furlongs->rods (miles->furlongs length)))))