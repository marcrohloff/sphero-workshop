#!/usr/bin/env ruby

require 'sphero'
require './workshop'

sphero = Sphero.connect Device::PATH

sphero.rgb(10,10,10)
sphero.back_led_output = 255


100.times do
  sphero.heading = 30
end

sphero.back_led_output = 0
