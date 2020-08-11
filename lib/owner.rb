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
  puts "I am a #{self.species}"
end

def buy_cat(name)
  cat = Cat.new(name)
  cat.owner = self
end

def buy_dog(name)
  dog = dog.new(name)
end

def cats
  cats.all.find_all {|cat| cat.owner == self}
end

def dogs
  cats.all.find_all {|dog| dog.owner == self}
