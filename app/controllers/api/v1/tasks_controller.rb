class Api::V1::TasksController < ApplicationController
    def index
        @tasks = Tasks.all
    end

    def new 
        @task = Task.new
    end

    def show
        @task = Task.find(params[:id])
    end

    def create
        @task = Task.new(task_params)
        @task.save
    end

    private

    def task_params
        params.require(:task).permit(:title, :description, :assigned_to, :date, :to_do)
    end
            
end