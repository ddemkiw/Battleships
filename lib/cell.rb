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

# class Cell
#   attr_accessor :content

#   def initialize(content)
#     @content = content
#   end

#   def hit?
#     @content.hit?
#   end
# end

# class Water
#   def hit?
#     false
#   end
# end

# class Ship
#   def hit?
#     true
#   end
# end
