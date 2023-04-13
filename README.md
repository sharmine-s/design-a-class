# Single-Class Programs Design Recipe
## 1. Describe the Problem

    As a user
    So that I can keep track of my tasks
    I want a program that I can add todo tasks to and see a list of them.

    As a user
    So that I can focus on tasks to complete
    I want to mark tasks as complete and have them disappear from the list.


## 2. Design the Class Interface

The interface of a class includes:

    class name will be Todo
    initialize method will create an empty array and won't take any parameters
    add_task method will take a task as an argument and add it to the array of todo's
    show_tasks method will show all tasks, won't take any arguments
    mark_as_complete method will take a task as an argument, and delete it from the array
    

    
    A more complex version that we could implement if time permits:
    
    class name will be Todo
    initialize method will include an empty hash and won't take any parameters, the hash will show incomplete and complete tasks
    add_task method will allow us to add a new task as an argument and by default mark it as incomplete
    show_incomplete_tasks method will show us the full list of tasks that are incomplete, no arguments needed
    show_all_tasks method will show all tasks including the complete and incomplete ones, no arguments needed

    array = [
    { task: "Do laundry", status: "incomplete" },
    { task: "Eat", status: "complete" }
    ]

    The name of the class.
    The design of its initializer and the parameters it takes.
    The design of its public methods, including:
        Their names and purposes
        What parameters they take and the data types.
        What they return and that data type
        Any side effects they might have.

Steps 3 and 4 then operate as a cycle.

## 3. Create Examples as Tests

    add_task("Do laundry") => "Task Do laundry successfully added!" ["Do laundry"]
    add_task("Eat") => "Task Eat successfully added!" ["Do laundry", "Eat"]
    show_tasks => * Do laundry (new line) * Eat
    mark_as_complete("Eat") => "Eat completed"
    show_tasks => * Do laundry

## 4. Implement the Behaviour

For each example you create as a test, implement the behaviour that allows the class to behave according to your example.

At this point you may wish to apply small-step test-driving to manage the complexity. This means you only write the minimum lines of the example to get the test to fail (red), then make it pass (green) and refactor, before adding another line to the test until it fails, then continue.

Then return to step 3 until you have addressed the problem you were given. You may also need to revise your design, for example if you realise you made a mistake earlier.
