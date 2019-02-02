class Cat
  COLORS = ['Blue', 'Black', 'Yellow', 'Orange']
  attr_reader :name, :color

  def initialize(name)
    @name = name
    @color = COLORS.sample
  end

  def greet
    puts "Hello! My name is #{name} and I'm a #{color} cat!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet