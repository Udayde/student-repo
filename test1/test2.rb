class Todolist
  attr_accessor :task

  def initialize
   @task=[]
  end 
  
  def add_task
   @task << gets.chomp
  end
  
  def delete_task(index)
    @task.delete(index-1)
  end
  
  def display
    for i in 0..@task.length-1
      puts "#{i+1 }.#{task[i]}"
    end
  
  end
  
  def update(index)
    if (0..@task.length - 1).include?(index)
      @task[index] = gets.chomp
    else
      puts "Sorry bro this index is not in your tasks"
    end

  end

  def menu
    puts "1.for add"
    puts "2.for display"
    puts "3.for update"
    puts "4.for delete"
    puts "5.for break"
  end

end

a1 = Todolist.new

loop do
  a1.menu
  a = gets.chomp.to_i
  case a
  when 1
    a1.add_task
  when 2
    a1.display
  when 3
    a1.update(gets.chomp.to_i)
  when 4
    a1.delete_task(gets.chomp.to_i)
  when 5 
    break
  else
    puts "Please Enter Valid Number"
  end
end

# create a program with book class which contains a class variable @@books,
# this variable should be an array and it should contain hashes of all the books that are created with some attributes.