class Cell

	def initialize
 		 @empty = true
	end 

	def empty? 
 		@empty
	end

	def anchor(ship)
		@empty = false
	end

end