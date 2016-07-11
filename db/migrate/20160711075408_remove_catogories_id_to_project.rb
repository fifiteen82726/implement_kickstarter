class RemoveCatogoriesIdToProject < ActiveRecord::Migration
  def change
  	remove_reference(:projects, :catogory, index: true)
  end
end
