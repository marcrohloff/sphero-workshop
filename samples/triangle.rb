#!/usr/bin/env ruby

require './workshop'
require 'sphero'

sphero = Sphero.connect Device::PATH

sphero.roll(60,   0)
sphero.keep_going 3

sphero.roll(60,  120)
sphero.keep_going 3

sphero.roll(60, 240)
sphero.keep_going 3

sphero.close