#!/usr/bin/env ruby

require './workshop'
require 'sphero'

def triangle(sphero, a, b)
  c = Math.sqrt( a**2 + b**2)
  angle = Math.sin(a.to_f/b)

  sphero.roll(60, Sphero::FORWARD)
  sphero.keep_going a

  sphero.roll(60, Sphero::RIGHT)
  sphero.keep_going b

  sphero.roll(60, angle)
  sphero.keep_going c
end

sphero = Sphero.connect Device::PATH
triangle(sphero, 3, 4)

