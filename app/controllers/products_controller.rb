class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products
  end

  def create
    product = Product.create(product_params)
    render json: product
  end

  def show
    find_product
    render json: product
  end

  def update
    find_product
    product.update(product_params)
    # update argument must be only thing that I want to update. maybe this can be all this.
    render json: product
  end

  def destroy
    find_product
    product.destory
  end

  private
  def find_product
    product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :imgFront, :imgBack, :inventory, :category, :color, :gender, :material, :size)
  end
end
