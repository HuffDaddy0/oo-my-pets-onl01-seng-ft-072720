class Owner
  # code goes here
  attr_accessor  :pets
  attr_reader :name, :species


  def initialize(name)
    self.name = name
    self.species = human
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
