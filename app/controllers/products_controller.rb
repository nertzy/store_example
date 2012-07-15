class ProductsController < ApplicationController
  def index
    @products = Product.scoped
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(params[:product])

    if @product.valid?
      redirect_to @product
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end
