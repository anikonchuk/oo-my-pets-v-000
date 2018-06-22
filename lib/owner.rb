class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    self.class.all << self 
  end
  
  def self.all 
    @@all
  end

  def self.count
    self.all.size 
  end
  
  def self.reset_all
    self.all.clear
  end
  
  def say_species
    "I am a #{@species}."
  end
  
end