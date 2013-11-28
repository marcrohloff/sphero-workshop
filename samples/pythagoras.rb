#!/usr/bin/env ruby

require './workshop'
require 'sphero'

def radians_to_degrees(angle)
  angle * 180.0 / Math::PI
end

def triangle(sphero, a, b)
  c = Math.sqrt( a**2 + b**2)
  angle = radians_to_degrees( Math.asin(a / c) )
  angle = angle.to_i

  sphero.roll(60, 0)
  sphero.keep_going a

  sphero.roll(60, 180-angle)
  sphero.keep_going c

  sphero.roll(60, 270)
  sphero.keep_going b
end

sphero = Sphero.connect Device::PATH
triangle(sphero, 3, 4)

sphero.close