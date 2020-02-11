class Api::V1::TasksController < ApplicationController
        # GET /tasks
        def index
            #model
            @tasks = Task.all
            serialized_data = TaskSerializer.new(@tasks)
            #response
            render json: serialized_data
        end
    
        # GET /tasks/1
        def show
            @task = Task.find_by(id: params[:id])
            serialized_data = TaskSerializer.new(@task)
            render json: serialized_data
        end
end
