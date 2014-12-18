require 'set'
require_relative 'ship'
require_relative 'game'

class Board

attr_accessor :attacks, :ships, :fleet

BATTLE = Ship.battleship
SUB = Ship.submarine

	def initialize
		@attacks = Set[]
		@fleet = Set[]
		@ships = Set[]

	end

	def attack(coordinates) 
		raise 'You may not attack the same cell twice, please try again' if @attacks.include? coordinates
		case self.hit?
			when BATTLE.coordinates.include?(coordinates)
				BATTLE.hit!
			when SUB.coordinates.include?(coordinates)
				SUB.hit!
			else 
				p "wooo"
			end
		@attacks << coordinates
	end

	def build_fleet(ship)
		raise 'You may place two ships in the same cell, please try again' if @fleet.intersect?(ship)
		@fleet << ship
		@fleet.flatten!
	end

	def hit?
		@attacks.intersect?(@fleet)
	end

	def hit!

	end

	def game_over? 
		@attacks.superset?(@fleet)
	end
end