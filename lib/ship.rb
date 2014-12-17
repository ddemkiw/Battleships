class Ship
  
  
attr_accessor :size 
attr_reader :hits

  def initialize(options = {})
    self.size = options.fetch(:size, size)
    @floating = true
    @hits = 0
  end

  def self.battleship
      new(:size => 4)
  end

  def self.submarine
      new(:size => 3)
  end

  def self.destroyer
      new(:size => 2)
  end

  def party_boat
      new(:size => 1)
  end

  def floating?
      @floating
  end

  # def hit!
  #     @hits +=1
  # end

  
  # def hit?
  #     @hit
  # end

  def whatever?
    if @hits > size
      ship.sink!
  end

  def sink!
   @floating = false
  end

  def hit!
    @hit = true
    @hits +=1
  end

end
