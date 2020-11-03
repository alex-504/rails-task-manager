class TasksController < ApplicationController
  
  def index
    @tasks = Task.all
  end  

  def show
    @task = Task.find(params[:id])
  end

  def new
    #for the form
    @task = Task.new
  end
  
  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to task_path(@task)
    else
      render :new
    end
  end

  def edit   
    @task = Task.find(params[:id]) 
  end

  def update
    # update from the form strong params
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to task_path(@task)
    else
      render :edit
    end
  end 

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end
  
  
  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end  
  
end
