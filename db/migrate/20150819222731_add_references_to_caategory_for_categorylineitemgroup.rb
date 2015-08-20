class AddReferencesToCaategoryForCategorylineitemgroup < ActiveRecord::Migration
  def change
    add_reference :category_lineitem_groups, :category
  end
end
