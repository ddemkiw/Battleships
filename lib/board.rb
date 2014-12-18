require_relative 'ship'
require_relative 'water'
require 'set'

	class Board

		attr_accessor :ships, :attacks, :coordinates, :contents

		def initialize
			@ships = Set.new
			@attacks = Set.new
			# coordinates = @coordinates
		 end

		def place_ship(coordinates)
			raise 'You may not attack the same cell twice, please try again' if ships.include?(coordinates.to_sym)
			# @contents.hit!
		 	@ships <<(coordinates.to_sym)
		 end

		def attack_cell(coordinates)
		 	raise 'You may not attack the same cell twice, please try again' if attacks.include?(coordinates.to_sym)
			# @contents.hit!
		 	@attacks <<(coordinates.to_sym)
		 end

		def hit?
    	 	return @contents
   		 end

		def game_over?
		 	@ships >= @attacks
		 end
	end