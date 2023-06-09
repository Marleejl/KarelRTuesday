#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class Sommatif1 < UrRobot
    include Turner
    def put_7_beepers()
        put_beeper
         move
        put_beeper
        move
        put_beeper
        move
        put_beeper
        move
        put_beeper
        move
        put_beeper
        move
        turn_right
        move
        turn_right
        put_beeper
        move
        put_beeper
        move
        put_beeper
        move
        put_beeper
         move
        put_beeper
        move
        put_beeper
        move 
        put_beeper
        move 
        put_beeper
        turn_right
        move
        turn_right
        move
        turn_right
        move 
        move
        turn_left
        put_beeper
        move
        put_beeper
        move
        put_beeper
        move
        put_beeper
        move
        put_beeper
        move
        put_beeper
        turn_right
        move
        turn_right
        move
        move
        move
        move
        put_beeper
        move
        put_beeper
        turn_left
        move
        put_beeper
        turn_left
        move
        turn_left
        move
        move
        move
        move
        move
        put_beeper
        turn_left
        move
        put_beeper
        turn_right
        move
        put_beeper




    end
end