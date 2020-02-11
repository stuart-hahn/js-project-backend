class Api::V1::ProjectsController < ApplicationController
    # GET /projects
    def index
        #model
        @projects = Project.all
        serialized_data = ProjectSerializer.new(@projects)
        #response
        render json: serialized_data
    end

    # GET /projects/1
    def show
        @project = Project.find_by(id: params[:id])
        serialized_data = ProjectSerializer.new(@project)
        render json: serialized_data
    end
end
