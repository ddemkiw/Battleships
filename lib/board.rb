require_relative 'cell'
require 'set'

	class Board

		attr_accessor :ships, :attacks, :coordinates

		def initialize
			@ships = Set.new
			@attacks = Set.new
			# coordinates = @coordinates
		 end

		 # def ships
		 # 	ships = Set.new
		 # end

		 # def attacks
		 # 	@attack = Set.new
		 # end

		 def place_ship(coordinates)
		 	@ships <<(coordinates)
		 end

		 def attack_cell(coordinates)
		 	@attacks <<(coordinates)
		 end

		 def game_over?
		 	@ships < @attacks 
		 end
	

	end