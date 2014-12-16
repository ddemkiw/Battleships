class Cell

  attr_reader :contents

	def initialize
 		 @contents = []
	end 

  def status? 
    @contents.inspect
  end

  def anchor(ship)
    @contents << ship
  end  

end