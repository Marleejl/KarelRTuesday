#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "Question_5_N3a"
require_relative "../karel/robota"

# a task for a Question5N3a
def task()
  world = Robota::World
  world.read_world("../karel/Construction")
  
  karel = Question5N3a.new(2, 3, Robota::EAST, 30)
  

  karel.construit
  
end

if __FILE__ == $0
  if $graphical
     screen = window(14, 90) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end