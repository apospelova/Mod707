class LineItem < ActiveRecord::Base

  belongs_to :order
  belongs_to :line_item_group

  has_many :category_lineitem
  has_many :categories, through: :category_lineitem

  accepts_nested_attributes_for :categories

end
