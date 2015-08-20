class AddReferencesToLineitemgrupForCategorylineitemgroup < ActiveRecord::Migration
  def change
    add_reference :category_lineitem_groups, :line_item_group
  end
end
