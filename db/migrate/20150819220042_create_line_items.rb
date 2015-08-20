class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.string :name
      t.decimal :price
      t.decimal :weight
      t.string :size

      t.timestamps null: false
    end
  end
end
