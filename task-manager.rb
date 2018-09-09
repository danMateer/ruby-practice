module Menu
  def menu
    " Welcome to the TodoList Program!
    This menu will help you use the Task List System
    Enter '1' to add a task
    Enter '2' to see your tasks
    Enter 'Q' to quit "
  end

  def show
    menu
  end
end

module Promptable
  def prompt(message = 'What would you like to do?', symbol = ':>')
    print message
    print symbol
    gets.chomp
  end
end


class List
  attr_reader :all_tasks

  def initialize
    @all_tasks = []
  end

  def add(task)
    all_tasks << task
  end

  def show
    all_tasks
  end
end

class Task
  attr_reader :description
  def initialize(description)
    @description = description
  end
end

if __FILE__ == $PROGRAM_NAME
  include Menu
  include Promptable
  my_list = List.new
  puts 'Please choose from the following list:'
    until ['q'].include?(user_input = prompt(show).downcase)
      case user_input
      when '1'
        my_list.add(Task.new(prompt('What is the task you would like to accomplish?')))
      when '2'
        puts my_list.show
      else
        puts 'Sorry, I did not understand'
    end
    prompt('Press enter to continue', '')
  end
  puts 'Goodbye!'
end
