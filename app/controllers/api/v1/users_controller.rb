class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def index
    user = User.all
    render json: user
  end

  def show
    find_user
    render json: user
  end

  def create
    user = User.create(user_params)
    if user.valid?
      token = encode_token({ user_id: user.id, name: user.name })
      render json: { user: UserSerializer.new(user), jwt: token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def update
    find_user
    user.update(password: params[:user][:password])
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def destroy
    find_user
    user.destory
  end

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  private
  def find_user
    user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
