#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class Question5N3a < UrRobot
    include Turner

    def construit
      put_8_row_of_beepers
      put_row_of_5_beepers
      put_8_row_of_beepers
       put_row_of_5_beepers
    end

    def put_row_of_5_beepers
      turn_right
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
    end

    def put_8_row_of_beepers()
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
    end
end