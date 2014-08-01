require './lib/task.rb'
require './lib/list.rb'
require 'chronic'
require 'pry'
  def main_menu
    loop do
      puts "Press 'l' to add a new list"
      puts "Press 'a' to add a task"
      # puts "Press 's' to see current to-dos"
      puts "Press 'x' to exit"

      main_choice = gets.chomp
      if main_choice == 'l'
        add_list
      elsif main_choice == 'a'
        add_task
      elsif main_choice == "x"
        puts "You won't get anything done!"
        exit
      # elsif main_choice == "s"
      #   see_it
      else
        puts "Please enter a valid option."
      end
    end
  end

  def add_list
    puts 'Describe a new list:'
    input_list_name = gets.chomp
    binding.pry
    if List.unique_list(input_list_name)
      List.new(input_list_name)
    else
      puts "please choose another list name, this is taken"
    end

    puts "•#{List.all_lists}"
  end

  def add_task
    puts 'Choose a list from:'



    @@list.each do |list|
      puts "•#{list.list_name}"
    end

    list_choice = gets.chomp
     @list.each do |index|
      if list_choice == index.list_name

        puts 'Enter the task name:' + "\n"
        task_name = gets.chomp

        puts 'Enter the task priority 1-5 (1=high):' + "\n"
        priority = gets.chomp

        puts 'Enter the task due date (mm/dd/yyyy) :' + "\n"
        due_date = Chronic.parse(gets.chomp)

        @task = Task.new(task_name, priority, status, due_date).save

        puts "task name: #{task_name}  priority: #{priority}  Due Date: #{due_date}  #{status}"
        break
      end
    end
  end

  #   #     puts 'Set priority from 1-3'
  #   #     priority = gets.chomp

  #   #     puts 'Enter description' + "\n"
  #   #     new_task = gets.chomp

  #   #     both = (priority + ' ' + new_task)

  #   #     @saved_info[index].add_task(Task.new(both))

  #   #   end
  #   # end
  # end

  # def see_it
  #   puts "Choose a list from:" + "\n"

  #   @saved_info.sort.each do |list|
  #     puts "•#{list.list_name}"
  #   end

  #   list_option = gets.chomp
  #   @saved_info.each do |list|
  #     if list_option == list.list_name
  #       list.sort_tasks.each do |task|
  #         puts task.description
  #       end
  #     end
  #   end
  #   puts "\n"
  # end

main_menu
