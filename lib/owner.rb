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
  
  def buy_fish(name)
    @pets[:fishes].push(Fish.new(name))
  end 
  
  def buy_cat(name)
    @pets[:cats].push(Cat.new(name))
  end 
  
   def buy_dog(name)
    @pets[:dogs].push(Dog.new(name))
  end 
  
  def walk_dogs
    @pets.collect do |specie, creation| 
      if specie == :dogs 
        creation.each do |dog|
          dog.mood = "happy"
        end 
      end
    end
  end 
  
  def play_with_cats
    @pets.collect do |specie, creation| 
      if specie == :cats 
        creation.each do |cat|
          cat.mood = "happy"
        end 
      end
    end
  end 
  
  def feed_fish
    @pets.collect do |specie, creation| 
      if specie == :cats 
        creation.each do |fish|
          fish.mood = "happy"
        end 
      end
    end
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