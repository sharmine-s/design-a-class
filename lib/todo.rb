class Todo
  def initialize
    @list = []
  end

  def add_task(task)
    @list << task
    return "#{task} successfully added!"
  end

  def show_tasks
    @list.each { |x| puts "* #{x}" }
  end

  def mark_as_complete(task)
    @list.delete(task)
    "#{task} completed"
  end
end