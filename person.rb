class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(name = 'unknown', age, parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
  end

  def can_use_services?
    if @age || parent_permission
    end
  end

  private

  def is_of_age?
    if @age >= 18
    end
  end
end
