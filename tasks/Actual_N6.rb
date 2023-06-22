#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "Actual_N6a"
require_relative "../karel/robota"

# a task for a Atual_N6a.rb
def task()
  world = Robota::World
  world.read_world("../karel/Ligne Vertical")
  karel = ActualN6a.new(3, 6, Robota::NORTH, 5)
  karel.regler()
  
end

if __FILE__ == $0
  if $graphical
     screen = window(18, 70) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end