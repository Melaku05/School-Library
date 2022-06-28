class Items
  def person_info(app)
    puts 'What is the person\'s id?'
    app.people.each_with_index do |person, index|
      puts "#{index}. [#{person.class}] - Name: #{person.name} ID: #{person.id} Age: #{person.age}"
    end
    id = gets.chomp
    app.all_rentals(id.to_i)
  end

  def list_options(app, input)
    puts input
    case input
    when 1
      puts 'List of books'
      app.all_book
    when 2
      puts 'List of person'
      app.all_person
    else
      puts 'Invalid input!'
    end
  end

  def create_options(app, input)
    case input
    when 3
      check_input_create_people(app)
    when 4
      create_book(app)
    when 5
      create_rental(app)
    end
  end
end
