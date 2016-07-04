class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :kickstart_id
      t.string :name
      t.string :photo_med
      t.float :pledged
      t.float :goal
      t.integer :backers_count
      t.string :state
      t.datetime :deadline

      t.timestamps null: false
    end
  end
end
