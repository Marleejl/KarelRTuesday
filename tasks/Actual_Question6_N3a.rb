#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "robo"
require_relative "../karel/robota"

# a task for a Atual_N6a.rb
def task()
 karel1= Robo.new(1,1,NORTH,1)
 karel2= Robo.new(6,1,EASt,0)
 karel3= Robo.new(6,6,SOUTH,0) 
 karel4= Robo.new(1,6,OUEST,0)

 karel1.drop_off
 karel2.pick_up
 karel2.drop_off
 karel3.
end

if __FILE__ == $0
  if $graphical
     screen = window(18, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end