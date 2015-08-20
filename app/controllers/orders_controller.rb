class OrdersController < ApplicationController
  before_action :authenticate_user!

  def new
    @categories = Category.all
    @user = current_user
    @order = @user.orders.new
    @order.line_items.build
  end

  def create
    @order = current_user.orders.build(order_params)

    if @order.save
      redirect_to root_path, notice: "Order created!"
    else
      render "new"
    end
  end

  private

    def order_params
      params.require(:order).permit(
        :address, :phone, :payment, line_items_attributes: [
          :name, :weight, :size, {category_ids: []}
        ]
      )
    end
end
