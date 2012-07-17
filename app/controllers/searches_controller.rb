class SearchesController < ApplicationController
  def new
  end

  def show
    @search = Search.new(params[:search]).tap(&:valid?)
  end
end
