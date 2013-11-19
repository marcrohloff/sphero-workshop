#!/usr/bin/env ruby

require 'sphero'
require './workshop'
require 'io/console'

puts "=========================="
puts "Use A and D to steer"
puts "Use W to accelerate, Z to break"
puts "Space to exit"

sphero = Sphero.connect Device::PATH

speed = 0

sphero.back_led_output = 255
sphero.rgb(0,0,0)

loop do
  c = $stdin.getch

  case c
    when "w"
      speed = speed + 10
      speed = 255 if speed > 255
      sphero.roll(speed, 0)
      sphero.rgb(speed*2, speed, speed)

    when "z"
      speed = speed - 20
      speed = 0 if speed < 0
      sphero.roll(speed, 0)
      sphero.rgb(speed*2, speed, speed)

    when "a"
      sphero.heading = 330

    when "d"
      sphero.heading =  30

    when " "
      break

  end
end

sphero.back_led_output = 0