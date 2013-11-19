#!/usr/bin/env ruby

require 'sphero'
require './workshop'

sphero = Sphero.connect Device::PATH

sphero.color('black')
sleep(2)

sphero.color('green')
sleep(1)

sphero.color('red')
sleep(1)

sphero.color('blue')
sleep(1)

sphero.color('white')
sleep(1)

sphero.rgb(255, 0, 0)
sleep(1)

sphero.rgb(0, 255, 0)
sleep(1)

sphero.rgb(255, 255, 255)
sleep(1)

sphero.rgb(30, 80, 200)
sleep(1)


20.times do
  sphero.rgb( rand(256), rand(256), rand(256) )
  sleep(0.1)
end

