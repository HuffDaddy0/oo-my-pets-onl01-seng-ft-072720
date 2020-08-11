class Owner
  # code goes here
  attr_accessor  :pets
  attr_reader :name, :species

@@all = []
  def initialize(name)
    self.name = name
    self.species = human
    @@all << self
end

def self.all
  self.all
end

def self.count
  self.all.length
end

def self.reset_all
  @@all.clear
end

def say_species
  "I am a #{self.species}"
end

def buy_cat(name)
  cat = Cat.new(name, self)
end

def buy_dog(name)
  dog = dog.new(name, self)
end

def cats
  cats.all.find_all {|cat| cat.owner == self}
end

def dogs
  cats.all.find_all {|dog| dog.owner == self}
end

def walk_dogs
  dogs = Dog.all.find_all {|dog| dog.owner == self}
  dogs.map {|dog| dog.mood = "happy"}
end

def feed_cats
  cats = Cat.all.find_all {|cat| cat.owner == self}
  cats.map {|cat| cat.mood = "happy"}
end

def sell_pets
  pets = []
  pets << owner.cats
  pets << owner.dogs
  pets.map do |pet|
     pet.owner = nil
     pet.mood = "nervous"
   end
 end

def list_pets
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end
end
