class AddCategoriesIdToProject < ActiveRecord::Migration
  
  def change
    add_reference :projects, :catogory, index: true
  end

end
