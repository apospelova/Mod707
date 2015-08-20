class CreateLineItemGroups < ActiveRecord::Migration
  def change
    create_table :line_item_groups do |t|

      t.timestamps null: false
    end
  end
end
