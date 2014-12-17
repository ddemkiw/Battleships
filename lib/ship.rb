class Ship
  

attr_accessor :hits, :size

  def initialize(options = {})
    self.size = options.fetch(:size, size)
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

  def self.somalianpirateship
      puts 'Arrr!'
      new(:size => 1)
  end

  def floating?
      !sunk?
  end

  def sunk?
   hits == size
  end

  def hit?
      @hit
  end
  
  def hit!
    self.hits += 1
    @hit = true
  end

end
