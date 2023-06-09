#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "Question_5_N1a"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  world = Robota::World
  world.read_world("../karel/Losange moitie")
  
  karel = Question5N1a.new(6, 3, Robota::NORTH, 5)
  
  world.show_world_with_robots(1, 1, 6, 6)
  karel.pick_beepers()
  
end

if __FILE__ == $0
  if $graphical
     screen = window(15, 80) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end