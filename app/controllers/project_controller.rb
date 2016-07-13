class ProjectController < ApplicationController
  before_action :set_category, only: [:show]

  def index
  	@category = Category.all
  	ap @category 

  end

  def show
  end


  def set_category
  	 @category = Post.find(params[:id])
  end
end
