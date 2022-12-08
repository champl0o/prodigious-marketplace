class ProductsController < ApplicationController
  def index
    @pagy, @products = pagy(Product.order(created_at: :desc))
    pp @products
  end

  def show
    @product = Product.find(params[:id])
  end
end
