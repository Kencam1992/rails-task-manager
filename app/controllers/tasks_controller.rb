class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = task.find(params[:id])
  end

  def create
    @task = task.new(params[:task_params])
    @task.save
    redirect_to task_path(@task)
  end

  def update; end

end
