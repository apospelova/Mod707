class Order < ActiveRecord::Base

  has_many :line_items
  belongs_to :user

  accepts_nested_attributes_for :line_items

  before_create :generate_number

  def generate_number
    self.number = Devise.friendly_token(5)
  end

end
