require 'todo'

describe Todo do
  context "add task" do
    it "adds a task to the list" do
      todo_list = Todo.new
      expect(todo_list.add_task("Do laundry")).to eq "Do laundry successfully added!"
      expect(todo_list.add_task("Eat")).to eq "Eat successfully added!"
    end
  end

  context "show all tasks" do
    it "shows each task in a bullet point line" do
      todo_list = Todo.new
      todo_list.add_task("Do laundry")
      expect { todo_list.show_tasks }.to output("* Do laundry\n").to_stdout
    end
  end

  context "mark as complete and remove" do
    it "removes task from list" do
      todo_list = Todo.new
      todo_list.add_task("Do laundry")
      todo_list.add_task("Eat")
      expect(todo_list.mark_as_complete("Eat")).to eq "Eat completed"
    end
  end

  context "show list after removing task" do
    it "shows the list" do
      todo_list = Todo.new
      todo_list.add_task("Do laundry")
      todo_list.add_task("Eat")
      todo_list.mark_as_complete("Eat")
      expect { todo_list.show_tasks }.to output("* Do laundry\n").to_stdout
    end
  end
end