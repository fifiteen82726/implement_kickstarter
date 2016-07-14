class ProjectsController < ApplicationController

before_action :set_project, only: [:show]
def show
	
end

def index
	@projects = Project.all
end

def set_project
  	 @project = Project.find(params[:id])
  	 ap params[:category_id]
  end
end
