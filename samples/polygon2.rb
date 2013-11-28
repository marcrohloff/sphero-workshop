#!/usr/bin/env ruby

require './workshop'
require 'sphero'

INCHES_PER_SECOND = 3

def polygon(sphero, sides, inches)
  direction = 0
  time      = inches / INCHES_PER_SECOND

  sides.times do
    sphero.roll(60,   direction)
    sphero.keep_going time
    direction = direction + 360 / sides
  end

end

sphero = Sphero.connect Device::PATH

polygon(sphero, 3, 4)

sphero.close
