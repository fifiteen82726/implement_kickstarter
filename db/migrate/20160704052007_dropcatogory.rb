class Dropcatogory < ActiveRecord::Migration
  def change
    drop_table :categories
  end
end
