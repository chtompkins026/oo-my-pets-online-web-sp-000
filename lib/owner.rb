class Owner
  @@all= []
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def say_species
    return "I am a #{self.species}."
  end 
  
  
  def self.all 
    @@all 
  end 
  
  def self.count 
    @@all.size 
  end 
  
  def self.reset_all
    @@all = []
  end 
end 