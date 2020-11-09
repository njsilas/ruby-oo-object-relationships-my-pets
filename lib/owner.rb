require "pry"
class Owner
  attr_reader :name, :species, :mood  
  
  @@all = []
  def initialize(name)
    @name = name
    @species = "human"
  
    @@all << self
  end
  def say_species
    "I am a human."
  end

  def self.all
      @@all
  end

  def self.count
      all.count
  end
  def self.reset_all
    all.clear
  end
  def cats
      Cat.all.select {|cat| cat.owner == self}
         
  end
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
  def buy_cat(kitty)
      Cat.new(kitty, self)
  end
  def buy_dog(doge)
    Dog.new(doge, self)
  end
  def walk_dogs
   self.dogs.first.mood = "happy"
  
  end
  def feed_cats
    self.cats.first.mood = "happy"
   
   end
   def sell_pets
   self.cats.first.mood = "nervous"
   self.dogs.first.mood = "nervous"
    self.dogs.first.owner = nil
    self.cats.first.owner = nil
  end
  def list_pets
     "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end
end

