# Lets hide some not so nice stuff

require 'rubygems'
require 'bundler/setup'
Bundler.setup

require 'sphero'
require './device' if File.exists? './device.rb'
require 'io/console'

class Sphero

  def self.connect(device = Device::PATH)
    s = new(device)

    at_exit do
      s.close
    end

    if block_given?
      begin
        yield s
      ensure
        s.close
        nil
      end

    else
      s
    end
  end

  def calibrate

    puts "Set the heading and press space ..."
    self.back_led_output = 255
    self.color('black')

    loop do
      c = $stdin.getch

      case c
        when "a", "D"
          self.heading = -5

        when "d", "C"
          self.heading = +5

        when " ", "\r"
          break

      end
    end

    back_led_output = 0
    self.color('blue')
    self.puts "Calibration finished"

  end

end

