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
  	current_game = Game.new
  	current_game.play

  		while current_game.play_again?
    	current_game.play
  		end
  		
	end

end

Application.new.perform








binding.pry