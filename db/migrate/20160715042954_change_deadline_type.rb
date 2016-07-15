class ChangeDeadlineType < ActiveRecord::Migration
  def self.up
  	remove_column :projects, :deadline
  	add_column :projects, :deadline, :integer
  end


  def self.down
  	remove_column :projects, :deadline
  	add_column :projects, :deadline, :datetime
  end
end
