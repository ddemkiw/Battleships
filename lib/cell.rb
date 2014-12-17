require_relative 'water'
require_relative 'ship'

class Cell

  attr_accessor :contents

	def initialize(contents)
 		@contents = contents
	end

 
	def attack
		raise 'You may not attack the same cell twice, please try again' if contents.hit? 
		@contents.hit!
	end

  	def hit?
      return @contents
    end

end

	
