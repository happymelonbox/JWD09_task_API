class Api::V1::TasksController < ApplicationController
    def index
        @tasks = Task.all
        if @tasks
            render json: @tasks.to_json()
        else
            render json: {
                status: 500,
                errors: @task.errors.full_messages
            }
        end
    end

    def create
        if task_params[:pod_name] === "Podlet of fire" || task_params[:pod_name] == "Dreamchasers" || task_params[:pod_name] == "Coding Den" || task_params[:pod_name] == "Testing Pod"
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

        else
            render json: {
                status: 500,
                errors: "Pod name not accepted"
            }
        end
    end

    def update
        if task_params[:pod_name] == "Podlet of fire" || task_params[:pod_name] == "Dreamchasers" || task_params[:pod_name] == "Coding Den" || task_params[:pod_name] == "Testing Pod"
            @task = Task.find(params[:id])
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
        else
            render json: {
                status: 500,
                errors: "Pod name not accepted"
            }
        end
    end

    def destroy
        @task = Task.find(params[:id])
        @task.destroy
    end

    private

    def task_params
        params.require(:task).permit(:title, :description, :assigned_to, :date, :status, :pod_name)
    end

end