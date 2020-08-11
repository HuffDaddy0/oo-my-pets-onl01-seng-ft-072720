class Dog
  # code goes here
  attr_accessor :name, :owner, :mood

@@all = []
  def initialize(name, mood)
    self.name = name
    self.mood = mood
end