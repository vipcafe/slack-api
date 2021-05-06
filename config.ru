# This file is used by Rack-based servers to start the application.

require_relative "config/environment"

run Rails.application
Rails.application.load_server

$LOAD_PATH.unshift(File.dirname(__FILE__))

require "dotenv"
Dotenv.load

require "drifting_ruby"

DriftingRuby::Bot.run
