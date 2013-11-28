#!/usr/bin/env ruby

require './workshop'
require 'sphero'

def star(sphero, time)
  direction = 0

  5.times do
    sphero.roll(60,   direction)
    sphero.keep_going time
    direction = (direction + 144) % 360
  end

end

sphero = Sphero.connect Device::PATH
star(sphero, 3)

sphero.close