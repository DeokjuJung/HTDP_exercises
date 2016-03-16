;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe4.4.2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define HOUR_PAY 12)
  
;; tax : number -> number
;; compute tax for a given gross pay in dollars

;; EXAMPLES
;; the tax for $100 is 0$
;; the tax for $240 is 0$
;; the tax for $300 is 45$
;; the tax for $480 is 72$
;; the tax for $500 is 140$

(define (tax pay)
  (cond
    [(<= pay 240) (* pay 0.0)]
    [(<= pay 480) (* pay 0.15)]
    [(>  pay 480) (* pay 0.28)]))

;; Test cases
(= (tax 100) 0)
(= (tax 240) 0)
(= (tax 300) 45)
(= (tax 480) 72)
(= (tax 500) 140)

;; grosspay : number -> number
;; compute the gross pay for a given work hours

;; EXAMPLES
;; (grosspay 10) is 120

(define (grosspay hours)
  (* hours HOUR_PAY))

;; Test cases
(= (grosspay 10) 120)

;; netpay : number -> number
;; compute the net pay for a given work hours

;; EXAMPLE
;; the net pay for 10 hours is 120$
;; the net pay for 20 hours is 240$
;; the net pay for 30 hours is 306$
;; the net pay for 40 hours is 408$
;; the net pay for 50 hours is 432$

(define (netpay hours)
   (- (grosspay hours)
      (tax (grosspay hours))))

;; Test cases
(= (netpay 10) 120)
(= (netpay 20) 240)
(= (netpay 30) 306)
(= (netpay 40) 408)
(= (netpay 50) 432)