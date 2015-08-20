class RemoveColumnFromLineItemGroups < ActiveRecord::Migration
  def change
    remove_column :line_item_groups, :track
    add_column :orders, :track, :string
  end
end
