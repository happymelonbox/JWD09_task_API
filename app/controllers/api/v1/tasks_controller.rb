class Api::V1::TasksController < ApplicationController
    def index
        @tasks = Task.all
        if @tasks
            render json: @tasks.to_json()
        else
            render json: {
                status: 500,
                errors: ['no tasks found']
            }
        end
    end

    def new 
        @task = Task.new
    end

    def show
        @task = Task.find(params[:id])
    end

    def create
        @task = Task.new(task_params)
        if @task.save
            render json: {
                status: 200,
                message: :created,
                task: @task
            }
        else
            render json: {
                status: 500,
                errors: @task.errors.full_messages
            }
        end
    end

    def update
        if @task.update(task_params)
            render json: {
                status: 200,
                message: :updated,
                task: @task.to_json()
            }
        else
            render json: {
                status: 500,
                errors: @task.errors.full_messages
            }
        end
    end

    def destroy
        @task.destroy
    end

    private

    def task_params
        params.require(:task).permit(:title, :description, :assigned_to, :date, :status)
    end
            
end