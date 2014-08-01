

class List
  @@lists = []

  def initialize(list_name)
    @list_name = list_name
    @tasks = []
  end

  def list_name
    @list_name
  end

  def tasks
    @tasks
  end

  def List.clear
    @@lists = []
  end

  def save
    @@lists << self
  end

  def add_task(task_name)
    @tasks << task_name
  end

  def List.all_lists
    @@lists
  end

end
