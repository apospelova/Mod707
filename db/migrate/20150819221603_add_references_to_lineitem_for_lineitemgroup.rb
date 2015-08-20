class AddReferencesToLineitemForLineitemgroup < ActiveRecord::Migration
  def change
    add_reference :line_item_groups, :line_items
  end
end
