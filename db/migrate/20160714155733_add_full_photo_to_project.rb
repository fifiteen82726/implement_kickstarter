class AddFullPhotoToProject < ActiveRecord::Migration
  def self.up
  	add_column :projects, :photo_full, :string

  end

  def self.down
  	 remove_column :projects, :photo_full, :string
  end
end
