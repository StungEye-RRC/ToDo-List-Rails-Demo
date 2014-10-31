class TasksController < ApplicationController
  
  # This is a collection action which loads all tasks.
  def index
    @tasks = Task.order(:description)
    
    if rand(0..1).zero?
      @chunky_something = "Chunky Banana"
    else
      @chunky_something = "Chunky Bacon"
    end
  end
  # The associated view is now automatically loaded: app/views/tasks/index.html.erb
  # The view has access to the @tasks and @chunk_something instance vars.
  
  # This is a member action which loads a single task.
  def show
    @task = Task.find(params[:id])
  end
  # The associated view is now loaded: app/view/tasks/show.html.erb
  # The view has access to the @task variable.
end
