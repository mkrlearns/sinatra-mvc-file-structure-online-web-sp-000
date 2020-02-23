class Dog
  attr_accessor :name, :breed, :age
  @@all = []

  def initialize(name, breed, age)
    args = { "name": name, "breed": breed, "age": age }
    args.keys.each { |k| instance_variable_set "@" + k.to_s, args[k] }
    @@all << self
  end

  def self.all() @@all end

end
