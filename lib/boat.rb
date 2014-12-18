class Boat
 attr_accessor :hits, :coordinates, :size

 def initialize(size)
 	@hits = 0
 	@coordinates = []
 	@size = size
 end

 def hit!
 	@hits += 1
 end

 def sunk? 
 	@hits == size 
 end

 def self.battleship
 	new(5)
 end

end