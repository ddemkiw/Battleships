class Ship

	def initialize
		@floating = true
	end

	def floating?
		@floating 
	end

	def hit!
		@floating = false
	end


end