class Owner
  attr_accessor :name
  attr_reader  :species, :pets
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    
    @pets = {:fishes => [], :dogs => [], :cats => []}
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
  
  def say_species
    "I am a human."
  end
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
  
end