class ProjectsController < ApplicationController
    def index
        render :index
    end
    def show
        @project = Project.find(params[:id])
       end

end