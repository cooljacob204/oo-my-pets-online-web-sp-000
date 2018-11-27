class Owner
  attr_reader :name, :species
  @@all = []
  def initialize(name)
    @name = name
    @@all << self  
  end
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all = []
  end
  
  def self.count
    @@all.size
  end
end