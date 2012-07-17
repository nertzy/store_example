class SearchesController < ApplicationController
  def new
  end

  def show
    if params[:query].blank?
      @missing_query = true
      @products = []
    else
      @products = Product.where("name LIKE ?", "%#{params[:query]}%")
    end

    if params[:query] =~ /shoes/i
      flash.now.alert = "Sorry, we don't sell shoes anymore"
    end
  end
end
