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

  def List.unique_list(input_list_name)
    # puts @@lists.length
    if @@lists == []
      # puts "hello"
      return true
    elsif
      # puts @@lists[0].list_name
      @@lists.each do |list|
        puts list.list_name
        if input_list_name == list.list_name
          return false
        else
          return true
        end
      end
    end
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
