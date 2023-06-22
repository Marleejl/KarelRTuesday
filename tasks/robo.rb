#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class Robo < UrRobot
    include Turner
    def tout
      commande_general
      ramasse
    end  


    def drop_off
      move
      move
      move
      move
      move
      put_beepers
    end 

    def pick_up
      pick_beepers
    end


    


    


end