;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe6.5.1) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; movie-template : movie -> ???
(define (movie-template a-movie)
 ... (movie-title a-movie) ...
 ... (movie-producer a-movie) ...)

;; boyfriend-template : boyfriend -> ???
(define (boyfriend-template a-friend)
 ... (boyfriend-name a-friend) ...
 ... (boyfriend-hair a-friend) ...
 ... (boyfriend-eyes a-friend) ...
 ... (boyfriend-phone a-friend) ...)

;; cheerleader-template : cheerleader -> ???
(define (cheerleader-template a-girl)
 ... (cheerleader-name a-girl) ...
 ... (cheerleader-number a-girel) ...)

;; CD-template : CD -> ???
(define (CD-template a-cd)
 ... (CD-artist a-cd) ...
 ... (CD-title a-cd) ...
 ... (CD-price a-cd) ... )

;; sweater-template : sweater -> ???
(define (sweater-template a-sweater)
 ... (sweater-material a-sweater) ...
 ... (sweater-size a-sweater) ...
 ... (sweater-producer) ... )
