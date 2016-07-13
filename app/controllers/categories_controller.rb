class CategoriesController < ApplicationController
  

  def index
  	@category = Category.paginate(:page => params[:page])
  	
  	ap @category 

  end

  def show
     @category = Category.find(params[:id])

  end


  
end
