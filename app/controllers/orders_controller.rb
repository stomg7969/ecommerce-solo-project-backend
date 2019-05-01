class OrdersController < ApplicationController
  skip_before_action :authorized

  def index
    orders = Order.all
    render json: orders
  end

  def create
    order = Order.create(order_params)
    render json: order
  end

  def show
    order = find_order
    render json: order
  end

  def update
    order = find_order
    order.update(order_params)
    render json: order
  end

  def destroy
    order = find_order
    order.destroy
  end

  private
  def find_order
    Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:user_id, :total_amount, :shipping_method, :status)
  end
end
