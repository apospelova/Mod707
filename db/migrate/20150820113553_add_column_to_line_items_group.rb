class AddColumnToLineItemsGroup < ActiveRecord::Migration
  def change
    add_column :line_item_groups, :track, :string
    add_column :line_item_groups, :status, :string
  end
end
