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
end