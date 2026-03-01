require 'serialport'
require 'json'
require 'time'
require_relative 'remote.rb'
require_relative 'webnav.rb'
require_relative 'keypresses.rb'

Remote.start_listener
