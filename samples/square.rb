#!/usr/bin/env ruby

require './workshop'
require 'sphero'

sphero = Sphero.connect Device::PATH

sphero.roll(60,   0)
sphero.keep_going 3

sphero.roll(60,  90)
sphero.keep_going 3

sphero.roll(60, 180)
sphero.keep_going 3

sphero.roll(60, 270)
sphero.keep_going 3
