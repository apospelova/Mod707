class AddReferencesToCategoryForCategorylineitem < ActiveRecord::Migration
  def change
    add_reference :category_lineitems, :category
  end
end
