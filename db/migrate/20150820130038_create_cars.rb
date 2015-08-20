class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :driver_name

      t.timestamps null: false
    end
  end
end
