class OrderDetailsController < ApplicationController
  def index
    details = OrderDetail.all
    render json: details
  end

  def create
    detail = OrderDetail.create(detail_params)
    render json: detail
  end

  def show
    find_detail
    render json: detail
  end

  def update
    find_detail
    detail.update(detail_params)
    render json: detail
  end

  def destroy
    find_detail
    detail.destory
  end

  private
  def find_detail
    detail = OrderDetail.find(params[:id])
  end

  def detail_params
    params.require(:detail).permit(:order_id, :product_id, :quantity, :size)
  end
end
