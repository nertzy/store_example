class SearchesController < ApplicationController
  def new
  end

  def show
    @products = Product.where("name LIKE ?", "%#{params[:query]}%")
  end
end
