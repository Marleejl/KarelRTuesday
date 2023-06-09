#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class SommatifN1a < UrRobot
    include Turner

   def belle
     put_3_beepers
     put_6_beepers
     transition
     put_8_beepers
     put_6_beepers
     put_3_beepers_2
  end

  def put_3_beepers
      put_beeper
      move
      turn_right
      move
      put_beeper
      turn_right
      move
      put_beeper
      turn_left
      move
  end

   def put_6_beepers
      put_beeper
      turn_left
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

  def transition
      move
      turn_right
      move
      turn_right
  end

  def put_8_beepers
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
      turn_right
      move
      turn_right
      move
  end

  def  put_3_beepers_2
      turn_right
      move
      turn_right
      move
      move
      move
      move
      move
      put_beeper
      turn_right
      turn_right
      move
      put_beeper
      turn_right
      move
      turn_right
      move
      put_beeper
  end


end