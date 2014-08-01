class Task

  @@tasks = []

  def initialize(task_name, priority, status, due_date)
    @task_name = task_name
    @priority = priority
    @status = status
    @due_date = due_date

  end

  def task_name
    @task_name
  end

  def priority
    @priority
  end

  def due_date
    @due_date
  end

  def status
    @status
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

#test_task = Task.new("Learn Ruby", 3, false, 'Tue Aug 29 05:00:00 PDT 2006')

#puts test_task.task_name


