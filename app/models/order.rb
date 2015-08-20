class Order < ActiveRecord::Base

  has_many :line_items
  has_many :categories, through: :line_items
  belongs_to :user

  accepts_nested_attributes_for :categories

end
