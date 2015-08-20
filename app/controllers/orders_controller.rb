class OrdersController < ApplicationController
  before_action :authenticate_user!

  def new
    @categories = Category.all
    @user = current_user
    @order = @user.orders.new
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = current_user.orders.build(order_params)

    if @order.save
      redirect_to root_path, notice: "Order created!"
    else
      render "new"
    end
  end

  def search
    number = params[:Number]
    @order = Order.where(number: number).first
    redirect_to order_path(@order.id)
  end

  private

    def order_params
      params.require(:order).permit(:category_ids, :address, :phone, :payment)
    end
end
