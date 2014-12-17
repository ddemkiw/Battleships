class Ship
  
  
attr_reader :size 
attr_accessor :hits

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

  def hit!
    self.hits += 1
    true
  end

end
