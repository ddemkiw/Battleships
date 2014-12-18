class Board

attr_accessor :attacks, :ships

	def initialize
		@attacks = []
		@ships = []
	end

	def attack(coordinates) 
		@attacks << coordinates
	end

	def place_ship(ship)
		@ships << ship
	end


end