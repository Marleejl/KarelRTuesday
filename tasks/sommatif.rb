#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "sommatif_1"
require_relative "../karel/robota"
include Turner

# a task for a sommatif1
def task()
   
  
  karel = Sommatif1.new(3, 3, Robota::NORTH, 27)
  karel.move
  karel.put_7_beepers
  karel.turn_left
  
end

if __FILE__ == $0
  if $graphical
     screen = window(15, 20) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end