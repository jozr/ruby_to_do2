class Task

  @@tasks = []

  def initialize(task_name, priority)
    @task = task_name
    @priority = priority
    @@tasks << self
  end

  def task_name
    @task_name
  end

  def priority
    @priority
  end

  def save
    @@tasks << self
  end

  def Task.all
    @@tasks
  end

  def Task.clear
    @@tasks = []
  end
end

test_task = Task.new("Learn Ruby", 3)

puts test_task.task_name


