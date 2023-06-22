#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "t_finale_robot"
require_relative "../karel/robota"

# a task for a tfinalerobot
def task()
  world = Robota::World
  world.read_world("../karel/tache_finale_a.kwld")
  karel = TFinaleRobot.new(1, 1, Robota::NORTH, 5)
  karel.main()
  
end

if __FILE__ == $0
  if $graphical
     screen = window(13, 115) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end