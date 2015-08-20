class OrdersController < ApplicationController
  def new
    @categories = Category.all
  end
end
