#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "Sommatif_N1a"
require_relative "../karel/robota"

# a task for a SommatifN1a
def task()
  karel = SommatifN1a.new(3, 3, Robota::NORTH, 30)
  karel.belle()
  
end

if __FILE__ == $0
  if $graphical
     screen = window(18, 90) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end