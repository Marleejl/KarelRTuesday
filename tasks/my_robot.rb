#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class MyRobot < UrRobot
  def put_5_beepers
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