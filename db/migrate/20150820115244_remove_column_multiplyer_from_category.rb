class RemoveColumnMultiplyerFromCategory < ActiveRecord::Migration
  def change
    remove_column :categories, :multiplyer
    add_column :categories, :multiplayer, :float
  end
end
