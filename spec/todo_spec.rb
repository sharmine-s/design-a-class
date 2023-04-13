require 'todo'

describe Todo do
  context "add task" do
    it "adds a task to the list" do
      todo_list = Todo.new
      expect(todo_list.add_task("Do laundry")).to eq "Do laundry successfully added!"
      expect(todo_list.add_task("Eat")).to eq "Eat successfully added!"
    end
  end
end