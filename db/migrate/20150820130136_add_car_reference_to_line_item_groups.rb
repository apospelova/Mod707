class AddCarReferenceToLineItemGroups < ActiveRecord::Migration
  def change
    add_reference :line_item_groups, :car, index: true, foreign_key: true
  end
end
