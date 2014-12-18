require 'set'
class Ship
  

attr_accessor :hits, :size, :coordinates

  def initialize(options = {})
    self.size = options.fetch(:size, size)
    @hits = 0
    @coordinates = []
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

  def self.partyboat
      puts 'Woo!'
      new(:size => 1)
  end

  def hit!
  @hits += 1
 end

 def sunk? 
  @hits == size 
 end

end
