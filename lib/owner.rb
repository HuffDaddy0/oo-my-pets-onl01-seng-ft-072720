require 'pry'

class Owner
  # code goes here
  attr_accessor  :pets
  attr_reader :name, :species

@@all = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
end

def self.all
  @@all
end

def self.count
  self.all.length
end

def self.reset_all
  @@all.clear
end

def say_species
  "I am a #{self.species}."
end

def buy_cat(name)
  cat = Cat.new(name, self)
  self.pets << cat
end

def buy_dog(name)
  dog = Dog.new(name, self)
  self.pets << dog
end

def cats
  Cat.all.find_all {|cat| cat.owner == self}
end

def dogs
  Dog.all.find_all {|dog| dog.owner == self}
end

def walk_dogs
  self.dogs.map {|dog| dog.mood = "happy"}
end

def feed_cats
  self.cats.map {|cat| cat.mood = "happy"}
end

def sell_pets
  self.pets.map do |pet|
    # binding.pry
     pet.owner = none
    #  binding.pry
     pet.mood = "nervous"
   end
 end

def list_pets
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end
end
