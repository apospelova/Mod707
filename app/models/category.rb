class Category < ActiveRecord::Base

  has_many :category_lineitem_groups
  has_many :line_item_groups, through: :category_lineitem_groups
  has_many :category_lineitem
  has_many :line_item, through: :category_lineitem

end
