class Ship
  
  
attr_accessor :size

  def initialize(options = {})
    self.size = options.fetch(:size, size)
    @floating = true
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
  
  end

  def hit_count

  end
  def hit
    hit_count += 1
  end

  def sink
    hit_count == ship.size
  end

  def hit?
    true
  end

end
