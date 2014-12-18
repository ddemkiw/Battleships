require 'set'

class Board

attr_accessor :attacks, :ships

	def initialize
		@attacks = Set[]
		@ships = Set[]
	end

	def attack(coordinates) 
		@attacks << coordinates
	end

	def place_ship(ship)
		@ships << ship
		@ships.flatten!
	end

	def hit?
		@attacks.intersect?(@ships) 
	end
end