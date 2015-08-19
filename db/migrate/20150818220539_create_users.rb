class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :Name
      t.string :FamilyName
      t.string :role
      t.string :phone
      t.string :address

      t.timestamps null: false
    end
  end
end
