class CategoryLineitemGroup < ActiveRecord::Base
  belongs_to :category
  belongs_to :line_item_group
end
