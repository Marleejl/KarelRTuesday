#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
require_relative "../mixins/sensor_pack"
# A class whose robots know how to sweep a short staircase of beepers
class TFinaleRobot< UrRobot
    include Turner
    include SensorPack

    def main
     repeat 
      turn_r
      turn_r_n
      repeat
      turn_l
      turn_l_n
      repeat
      turn_r
      turn_r_n
      repeat
       turn_l
      turn_l_n
      repeat
       turn_r
      turn_r_n
      repeat
      turn_l
      turn_l_n
      repeat
       turn_r
      turn_r_n
      repeat
      turn_l
      turn_l_n
      repeat 
      turn_r
      turn_r_n
      repeat
      turn_l
      turn_l_n
      repeat
      turn_r
      turn_r_n
      deplacement   
      pick
      turn_r_n
      deplacement
      turn_r_n
      turn_r_n
      put
      

    end

    def repeat
      11.times do
        ramasse 
      end 
    end

    def ramasse
      while next_to_a_beeper?
        pick_beeper
      end
      move
    end

   
    def turn_r
      turn_right
      move
    end

    def turn_r_n
      turn_right
    end

    def turn_l
      turn_left
      move
    end

     def turn_l_n
      turn_left
    end

    def deplacement
       move
       move
       move
       move
       move
       move
       move
       move
       move 
       move
       move
    end

    def pick
        while next_to_a_beeper?
        pick_beeper
      end
    end 

     def put
        if any_beepers_in_beeper_bag?
           put_beeper
           move
           put_beeper
           turn_left
           move
           put_beeper
           move
           turn_right
           move
           put_beeper
           turn_right
           move
           put_beeper
           move
           put_beeper
           turn_left
           move
           put_beeper
           turn_left
           move
           put_beeper
           move
           put_beeper
           move
           put_beeper
           move
           turn_right
           move
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
           turn_left
           move
           put_beeper
           turn_right
           move
           put_beeper
           move
           put_beeper
        end


      end
             

end
