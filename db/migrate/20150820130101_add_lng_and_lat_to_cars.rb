class AddLngAndLatToCars < ActiveRecord::Migration
  def change
    add_column :cars, :lng, :float
    add_column :cars, :lat, :float
  end
end
