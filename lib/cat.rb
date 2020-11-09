class Cat
  attr_accessor :mood, :owner
  attr_reader :name 
  @@all = []
  def initialize (name, owner, mood = "nervous")
    @owner = owner
    @mood = mood
    @name = name
    @@all << self
     
  end
  def self.all
      @@all
  end
  
end
