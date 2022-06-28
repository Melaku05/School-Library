require './app'

class Start
  def initialize
    @app = App.new
  end

  def check_input(app, input)
    case input
    when 1..2
      list_options(app, input)
    when 3..5
      create_options(app, input)
    when 6
      person_info(app)
    when 7
      puts 'Goodbye!'
      raise StopIteration
    else
      puts "You input #{input}"
    end
  end

  def run
    loop do
      puts 'Please choose an option by entering a number'
      puts '1 - List all books'
      puts '2 - List all people'
      puts '3 - Create a person'
      puts '4 - Create a book'
      puts '5 - Create a rental'
      puts '6 - List all rentals for a given person id'
      puts '7 - Exit'
      input = gets.chomp.to_i
      check_input(app, input)
    end
  end
end
