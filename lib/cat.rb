class Cat
  # code goes here
  attr_accessor :owner, :mood
attr_reader :name

  @@all = []
  def initialize(name, owner)
    self.name = name
    self.owner = owner
    @@all << self
end