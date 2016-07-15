class CategoriesController < ApplicationController
  

  def index
  	@category = Category.paginate(:page => params[:page])
  	
  	ap @category 

  end

  def show

  	 @category = Category.includes(:projects).find(params[:id])
  	 @q = @category.projects.ransack(params[:q])
  	 @projects = @q.result(distinct: true)
  	 @projects = @projects.paginate(:page => params[:page], :per_page => 10)
	 

  end


  
end
