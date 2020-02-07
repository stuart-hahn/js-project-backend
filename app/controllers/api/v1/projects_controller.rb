class Api::V1::ProjectsController < ApplicationController
    # GET /projects
    def index
        #model
        @projects = Project.all
        #response
        render json: @projects
    end

    # GET /projects/1
    def show
        @project = Project.find_by(id: params[:id])
        render json: @project
    end
end
