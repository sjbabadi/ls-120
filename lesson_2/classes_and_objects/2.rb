class Person
  attr_reader :first_name
  attr_accessor :last_name

  def initialize(name)
    parts = name.split
    @first_name = name.split.first
    @last_name = parts.size > 1 ? parts.last : ''
  end

  def name
    "#{self.first_name.to_s} #{self.last_name.to_s}"
  end
end

bob = Person.new('Robert')
puts bob.name                  # => 'Robert'
puts bob.first_name            # => 'Robert'
p bob.last_name             # => ''
bob.last_name = 'Smith'
puts bob.name                  # => 'Robert Smith'
