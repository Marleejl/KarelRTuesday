#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "question_6a"
require_relative "../karel/robota"

# a task for a question6a
def task()
  world = Robota::World
  world.read_world("../karel/Marlee")
  karel = Question6a.new(6, 4, Robota::NORTH, 30)
  
  karel.pick_5_beeper()
  
end

if __FILE__ == $0
  if $graphical
     screen = window(20, 50) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end