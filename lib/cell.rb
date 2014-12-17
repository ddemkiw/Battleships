require_relative 'water'
require_relative 'ship'
class Cell

  attr_accessor :contents

	def initialize(contents)
 		@contents = contents
	end

  def hit?
      @contents.hit?
    end
end

	
