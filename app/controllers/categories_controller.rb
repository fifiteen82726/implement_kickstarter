class CategoriesController < ApplicationController
  before_action :set_category, only: [:show]

  def index
  	@category = Category.paginate(:page => params[:page])
  	
  	ap @category 

  end

  def show
  end


  def set_category
  	 @category = Category.find(params[:id])
  end
end
