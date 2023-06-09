#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class Question5N1a < UrRobot
    include Turner
    def pick_beepers()
       pick_beeper
       turn_right
       move
       move
       pick_beeper
       move
       move
       pick_beeper
       move
       move
       pick_beeper
       turn_right
       move
       turn_right
       move
       pick_beeper
       move
       move
       pick_beeper
       move
       move
       pick_beeper
       turn_left
       move
       turn_left
       move
       pick_beeper
       turn_right
       move
       turn_left
       move
       pick_beeper
       move
       turn_left
       move
       pick_beeper

      



    end
end