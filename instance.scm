(load "game.scm")
(load "player.scm")
(load "monster.scm")
(load "house.scm")
(load "location.scm")

; . . H
; H . .
; . . .

(define start-state
  (state-maker
    (location-maker 0 0)
    (list
      (location-maker 0 2)
      (location-maker 1 0))
    (list
      (house-maker
        (list (new-monster-maker 'vampire))
        0)
      (house-maker
        (list
          (new-monster-maker 'vampire)
          (new-monster-maker 'werewolf))
        0))
    (new-player-maker)
    (generate-arsenal)))

(define moves
  (list
    (list 'move 'S)
    (list 'move 'S)
    (list 'move 'N)
    (list 'attack 'kiss)))

(game start-state moves)
