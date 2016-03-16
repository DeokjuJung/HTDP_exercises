;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exe5.1.5) (read-case-sensitive #t) (teachpacks ((lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "guess.rkt" "teachpack" "htdp")) #f)))
;; check-color : symbol symbol symbol symbol -> symbol
;; to answer color guessing game
(define (check-color target1 target2 guess1 guess2)
  (cond
    [(and (symbol=? target1 guess1) (symbol=? target2 guess2)) 'Perfect]
    [(or  (symbol=? target1 guess1) (symbol=? target2 guess2)) 'OneColorAtCorrectPosition]
    [(or  (symbol=? target1 guess2) (symbol=? target2 guess1)) 'OneColorOccurs]
    [else 'NothingCorrect]))

;; Test as Examples
(symbol=? (check-color 'red 'blue 'red 'blue) 'Perfect)
(symbol=? (check-color 'red 'blue 'red 'green) 'OneColorAtCorrectPosition)
(symbol=? (check-color 'red 'blue 'yellow 'blue) 'OneColorAtCorrectPosition)
(symbol=? (check-color 'red 'blue 'yellow 'red) 'OneColorOccurs)
(symbol=? (check-color 'red 'blue 'blue 'yellow) 'OneColorOccurs)
(symbol=? (check-color 'red 'blue 'blue 'red) 'OneColorOccurs)
(symbol=? (check-color 'red 'blue 'yellow 'green) 'NothingCorrect)