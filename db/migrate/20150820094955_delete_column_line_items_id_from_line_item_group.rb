class DeleteColumnLineItemsIdFromLineItemGroup < ActiveRecord::Migration
  def change
    remove_column :line_item_groups, :line_items_id
    add_column :line_item_groups, :order_id, :integer
    add_column :line_items, :order_id, :integer
    add_column :line_items, :line_item_group_id, :integer
  end
end
