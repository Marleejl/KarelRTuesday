#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class ActualN6a < UrRobot
    include Turner

    def regler
      pick_beepers
      put_beepers
    end 

    def pick_beepers
      pick_beeper
      move
      pick_beeper
      move
      pick_beeper
      move
      pick_beeper
      move
      pick_beeper
    end 

    def put_beepers
      put_beeper
      turn_right
      move
      put_beeper
      move
      put_beeper
      move
      put_beeper
      move
      put_beeper

    end 

end