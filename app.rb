require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'player'
require 'boardcase'
require 'board'
require 'game'
require 'show'

class Application

	def perform

	end

end

Application.new.perform








binding.pry