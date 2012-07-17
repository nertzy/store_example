class ProductsController < ApplicationController
  def index
    @products = Product.scoped
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])

    if @product.save
      flash.notice = "Thanks, your new product has been saved!"
      redirect_to @product
    else
      flash.now.alert = "Sorry, unable to save your product, see errors below."
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end
