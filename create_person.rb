require './student'
require './teacher'

class CreatePerson
  def check_input_create_people(app)
    puts 'Do you want to create a student (1) or a teacher? (2) [Input 1 or 2]'
    input = gets.chomp.to_i
    case input
    when 1
      create_student(app)
    when 2
      create_teacher(app)
    else
      puts 'Invalid input!'
    end
  end

  def create_student(app)
    puts 'Let\'s create a student!'
    puts 'What is your name?'
    name = gets.chomp
    puts 'What is your age?'
    age = gets.chomp.to_i
    puts 'Has parents permission? (y/n)'
    parent_permission = gets.chomp.downcase == 'y'
    app.create_student(age: age, name: name, parent_permission: parent_permission)
    puts 'Student created!'
  end

  def create_teacher(app)
    puts 'Let\'s create a teacher!'
    puts 'What is your name?'
    name = gets.chomp
    puts 'What is your age?'
    age = gets.chomp.to_i
    puts 'What is your specialization?'
    specialization = gets.chomp
    app.create_teacher(specialization: specialization, age: age, name: name, parent_permission: true)
    puts 'Teacher created!'
  end
end
