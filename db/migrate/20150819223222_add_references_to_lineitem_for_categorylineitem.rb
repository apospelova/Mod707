class AddReferencesToLineitemForCategorylineitem < ActiveRecord::Migration
  def change
    add_reference :category_lineitems, :line_item
  end
end
