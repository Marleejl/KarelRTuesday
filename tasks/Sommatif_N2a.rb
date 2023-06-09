#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner"
# A class whose robots know how to sweep a short staircase of beepers
class SommatifN2a < UrRobot
    include Turner

    def ramasse
      first_pick_2_beepers
      cheminee_outting
      entrer_dans
      pick_2_beepers
      cheminee_outting
      entrer_dans
      pick_2_beepers
      cheminee_outting
      nouvelle_etage
      entrer_dans_haut
      pick_2_beepers
      cheminee_outting
      entrer_dans
      pick_2_beepers
      cheminee_outting
      entrer_dans
      pick_2_beepers
      cheminee_outting
      put_beepers
    end

    def first_pick_2_beepers()
       pick_beeper
       pick_beeper
       turn_left
       turn_left
       move
       pick_beeper
       pick_beeper
    end

    def cheminee_outting
        turn_left
        turn_left
        move
        turn_left
        move
        move
        turn_right
        move
        turn_left
        move
        move
    end

    def entrer_dans
        turn_left
        move
        move
        move
        turn_left
        move
        move
        turn_right
        move
        turn_left
        move
        move
    end

    def pick_2_beepers()
       pick_beeper
       pick_beeper
       turn_right
       move
       pick_beeper
       pick_beeper
     end 

    def nouvelle_etage
       turn_right
       move
       move
       move
       move
       move
       move
       move
       turn_left
       move
       move
       move
       move
       move
       move
    end

   def entrer_dans_haut
        turn_left
        move
        turn_left
        move
        move
        turn_right
        move
        turn_left
        move
        move  
    end

    def put_beepers
        turn_right
        move
        move
        move
        move
        move
        move
        move
        move
        turn_right
        move
        move
        move
        move
        move
        move
        move
        move
        turn_right
        move
        turn_left
        move
        turn_left
        move
        turn_right
        move
        move
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
        put_beeper
    end
end