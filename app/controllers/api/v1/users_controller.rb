class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :index, :order]

  def index
    user = User.all
    render json: user
  end

  def show
    user = find_user
    render json: user
  end

  def create
    user = User.create(user_params)
    if user.valid?
      token = encode_token({ user_id: user.id, username: user.username })
      render json: { user: UserSerializer.new(user), jwt: token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def update
    user = find_user
    user.update(password: params[:user][:password])
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def destroy
    user = find_user
    if user.orders.count > 0
      user.orders.map do |orderObj|
        orderObj.update(user_id: 1)
        if orderObj.valid?
          user.destroy
        end
      end
    else
      user.destroy
    end
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def order
    detail = OrderDetail.create(order_id: params[:order_id], product_id: params[:product_id], quantity: params[:quantity], size: params[:size])
    render json: detail
  end
  def update_order
    detail = OrderDetail.find(params[:id])
    detail.update(quantity: params[:quantity])
    render json: detail
  end

  private
  def find_user
    User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
