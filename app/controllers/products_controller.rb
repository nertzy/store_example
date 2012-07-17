class ProductsController < ApplicationController
  respond_to :html, :json, :xml

  def index
    @products = Product.scoped
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(params[:product])
    respond_with @product, location: root_path, only: [:name, :description]
  end

  def show
    @product = Product.find(params[:id])
  end
end
