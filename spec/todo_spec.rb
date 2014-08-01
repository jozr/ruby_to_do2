require 'rspec'
require 'list'
require 'task'

describe(List) do

  before do
    List.clear
  end

  it("starts out with an empty list of tasks") do
    test_list = List.new("School stuff")
    test_list.tasks.should eq []
  end

  it('can add new lists') do
    test_list1 = List.new('Food')
    test_list2 = List.new('Run')
    test_list1.save
    test_list2.save
    List.all_lists.should eq [test_list1, test_list2]
  end

  describe '.clear' do
    it 'empties out all of the saved lists' do
      List.new('wash the lion').save
      List.clear
      List.all_lists.should eq []
    end
  end

  it("can add tasks to a list") do
    test_list1 = List.new("Fun stuff")
    test_task = Task.new("Learn Ruby", 2)
    test_list1.add_task(test_task)
    test_list1.tasks.should eq [test_task]
  end


end

describe(Task) do

  before do
    Task.clear
  end

  describe '.clear' do
    it 'empties out all of the saved tasks' do
      Task.new('wash the lion', 1).save
      Task.clear
      Task.all.should eq []
    end
  end

  it('can add a priority to a task') do
    test_task = Task.new('Run Errands', 2)
    puts test_task
    expect(test_task.priority).to eq 2
  end
end

