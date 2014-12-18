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
		ship.to_set
		@ships << ship
	end

	def hit?
			if @attacks.intersection(@ships) == nil
			end
	end


end