class LineItem < ActiveRecord::Base
  belongs_to :line_item_group
  has_many :category_lineitem
  has_many :category, through: :category_lineitem
end
