#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "Sommatif_N2a"
require_relative "../karel/robota"

# a task for a SommatifN2a
def task()
  world = Robota::World
  world.read_world("../karel/grinch.kwld")
  
  karel = SommatifN2a.new(2, 9, Robota::EAST, 30)
  karel.ramasse
  
end

if __FILE__ == $0
  if $graphical
     screen = window(19, 100) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end