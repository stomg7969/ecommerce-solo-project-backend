class OrderDetailsController < ApplicationController
  skip_before_action :authorized

  def index
    details = OrderDetail.all
    render json: details
  end

  def create
    detail = OrderDetail.create(detail_params)
    render json: detail
  end

  def show
    detail = find_detail
    render json: detail
  end

  def update
    detail = find_detail
    detail.update(detail_params)
    render json: detail
  end

  def destroy
    detail = find_detail
    detail.destory
  end

  private
  def find_detail
    OrderDetail.find(params[:id])
  end

  def detail_params
    params.require(:detail).permit(:order_id, :product_id, :quantity, :size)
  end
end
