class OrdersController < ApplicationController
  def index
    orders = Order.all
    render json: orders
  end

  def create
    order = Order.create(order_params)
    render json: order
  end

  def show
    find_order
    render json: order
  end

  def update
    find_order
    order.update(order_params)
    render json: order
  end

  def destroy
    find_order
    order.destory
  end

  private
  def find_order
    order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:user_id, :total_amount, :shipping_method, :status)
  end
end
