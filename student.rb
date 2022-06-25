require './person'
class Student < Person
  def initialize(age, name = 'unknown', parent_permission: true)
    super(name, age, parent_permission)
  end

  def add_classroom(classroom)
    @classroom = classroom
    classroom&.add_student(self) unless classroom&.includes?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
