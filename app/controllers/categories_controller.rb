class CategoriesController < ApplicationController
  

  def index
  	@category = Category.paginate(:page => params[:page])
  	
  	ap @category 

  end

  def show

  	 @category = Category.find(params[:id])
  	 @projects = @category.projects.paginate(:page => params[:page], :per_page => 10)
     

  end


  
end
