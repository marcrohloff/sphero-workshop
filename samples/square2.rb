#!/usr/bin/env ruby

require './workshop'
require 'sphero'

def square(sphero, time)
  direction = 0
  4.times do
    sphero.roll(60, direction)
    sphero.keep_going time
    direction = direction + 90
  end
end

sphero = Sphero.connect Device::PATH

square(sphero, 3)

sphero.close
