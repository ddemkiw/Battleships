require_relative 'cell'

	class Board

		attr_accessor :ships, :attacks, :coordinates

		def initialize
			@ships = Set.new
			@attacks = Set.new
			coordinates = @coordinates
		 end

		 def place_ship(coordinates)
		 	@ships <<(coordinates)
		 end
	end