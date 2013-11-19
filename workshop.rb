# Lets hide some not so nice stuff

require 'rubygems'
require 'bundler/setup'
Bundler.setup

require 'sphero'
require './device' if File.exists? './device.rb'

def Sphero.connect(device = Device::PATH)
  s = Sphero.new(device)

  at_exit do
    s.close
  end

  s
end
