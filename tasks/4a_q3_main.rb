#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "my_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
  
  karel = MyRobot.new(3, 3, Robota::NORTH, 25)
  karel.put_5_rows_of_beepers

end

if __FILE__ == $0
  if $graphical
     screen = window(8, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end