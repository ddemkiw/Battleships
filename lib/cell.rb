require_relative 'water'

class Cell

  attr_reader :contents

	def initialize(default_contents)
 		@contents = [default_contents]
	end

  def anchor(ship)
    @contents.shift
    @contents << ship
  end  

end

class Cell
  attr_accessor :content

  def initialize(content)
    @content = content
  end

  def hit?
    @content.hit?
  end
end

class Water
  def hit?
    false
  end
end

class Ship
  def hit?
    true
  end
end
