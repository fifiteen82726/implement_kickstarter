class AddCategoriesIdToProjectAgain < ActiveRecord::Migration
   def self.up
    add_reference :projects, :category, index: true
  end

  def self.donw
  	remove_reference(:projects, :category, index: true)
  end

end
