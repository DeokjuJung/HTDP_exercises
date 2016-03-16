;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname sec.5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; reply : symbol -> symbol
;; to determine a reply for the greeting s
(define (reply s)
  (cond
    [(symbol=? s 'GoodMorning) 'Hi]
    [(symbol=? s 'HowAreYou?) 'Fine]
    [(symbol=? s 'GoodAfternoon) 'INeedNap]
    [(symbol=? s 'GoodEvening) 'BoyAmITired]))

(reply 'HowAreYou?)

;; Test Cases
(symbol=? (reply 'GoodMorning) 'Hi)
(symbol=? (reply 'HowAreYou?) 'Fine)
(symbol=? (reply 'GoodAfternoon) 'INeedNap)
(symbol=? (reply 'GoodEvening) 'BoyAmITired)