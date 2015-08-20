class AddColumnPathForOrder < ActiveRecord::Migration
  def change
    add_column :orders, :distance, :integer
  end
end
