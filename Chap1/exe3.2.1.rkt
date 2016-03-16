;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe3.2.1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define FIXED-COST 180)
(define COST-PER-ATTENDEE 0.04)
(define BASE-ATTENDEES 120)
(define BASE-PRICE 5.00)
(define ATTENDEES-PER-DIME 15)

;; profit : number -> number
;; to compute the profit as the difference between revenue and costs
;; at some give ticket-price
;; example : (profit 5.00) should produce 415.2
;; example : (profit 4.00) should produce 889.2
;; example : (profit 3.00) should produce 1063.2
(define (profit ticket-price)
  (- (revenue ticket-price)
     (cost ticket-price)))

;; revenue : number -> number
;; to compute the revenue, given ticket-price
;; example : (revenue 5.00) should produce 600
;; example : (revenue 4.00) should produce 1080
;; example : (revenue 3.00) should produce 1260
(define (revenue ticket-price)
  (* (attendees ticket-price) ticket-price))

;; cost : number -> number
;; to compute the costs, given ticket-price
;; example : (cost 5.00) should produce 184.8
;; example : (cost 4.00) should produce 190.8
;; example : (cost 3.00) should produce 196.8
(define (cost ticket-price)
  (+ FIXED-COST
     (* COST-PER-ATTENDEE (attendees ticket-price))))

;; attendees : number -> number
;; to compute the number of attendees, given ticket-price
;; example : (attendees 5.00) should produce 120
;; example : (attendees 4.00) should produce 270
;; example : (attendees 3.00) should produce 420
(define (attendees ticket-price)
  (+ BASE-ATTENDEES
     (* (/ ATTENDEES-PER-DIME 0.10) (- BASE-PRICE ticket-price))))

;; Tests
(profit 3.00) "should be" 1063.2