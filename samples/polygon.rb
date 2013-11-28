#!/usr/bin/env ruby

require './workshop'
require 'sphero'

def polygon(sphero, sides, time)
  direction = 0

  sides.times do
    sphero.roll(60,   direction)
    sphero.keep_going time
    direction = direction + 360 / sides
  end

end

sphero = Sphero.connect Device::PATH
polygon(sphero, 3, 4)

