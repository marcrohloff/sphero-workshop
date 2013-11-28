#!/usr/bin/env ruby

require './workshop'
require 'sphero'

sphero = Sphero.connect Device::PATH

sphero.rgb(10,10,10)

10.times do
  0.step(255,  45) { |i| sphero.back_led_output = i }
  255.step(0, -45) { |i| sphero.back_led_output = i }
end

sphero.back_led_output = 0

sphero.close