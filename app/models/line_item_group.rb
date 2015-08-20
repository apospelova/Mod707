class LineItemGroup < ActiveRecord::Base
  has_many :line_item
  has_many :category_lineitem_groups
  has_many :category, through: :category_lineitem_groups
end
