class ProductsController < ApplicationController
  skip_before_action :authorized, only: [:index, :update_inventory]

  def index
    products = Product.all
    render json: products
  end

  def create
    product = Product.create(product_params)
    render json: product
  end

  def show
    product = find_product
    render json: product
  end

  def update
    product = find_product
    product.update(product_params)
    # update argument must be only thing that I want to update. maybe this can be all this.
    render json: product
  end

  def update_inventory
    product = find_product
    product.update(inventory: params[:inventory])
    # update argument must be only thing that I want to update. maybe this can be all this.
    render json: product
  end

  def destroy
    product = find_product
    product.destroy
  end

  private
  def find_product
    Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :imgFront, :imgBack, :inventory, :category, :color, :gender, :material, :size)
  end
end
