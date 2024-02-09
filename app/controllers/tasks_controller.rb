class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new

  end

  def create

    @task = Task.new(task_params)

    @task.save
    redirect_to tasks_path
  end

  def destroy
    @task = task.find(task_params)
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :description)
  end
end
