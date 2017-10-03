class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
  @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.description.blank?
      redirect_to new_task_path, alert: "Description cannot be blank!"
    else
      @task.save
      redirect_to @task, alert: "Task added!"
    end
  end

private

def task_params
  params.require(:task).permit(:description, :completed)
end

end
