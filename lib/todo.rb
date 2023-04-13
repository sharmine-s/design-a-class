class Todo
  def initialize
    @list = []
  end

  def add_task(task)
    @list << task
    "#{task} successfully added!"
  end
end