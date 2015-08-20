class CreateCategoryLineitemGroups < ActiveRecord::Migration
  def change
    create_table :category_lineitem_groups do |t|

      t.timestamps null: false
    end
  end
end
