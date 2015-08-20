class CategoryLineitem < ActiveRecord::Base

  belongs_to :category
  belongs_to :line_item

end
