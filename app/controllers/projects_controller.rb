class ProjectsController < ApplicationController

before_action :set_project, only: [:show]
def show
	@day = (Time.at(@project.deadline).to_date - Time.now.to_date).to_i 
			 

	# ap @day
end

def index

	@q = Project.ransack(params[:q])
	# ap params[:q]
	@projects = @q.result(distinct: true)
	#@projects = Project.all
end

def set_project
  	 @project = Project.find(params[:id])
  	 # ap params[:category_id]

  end
end
