class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter { @search ||= Search.new }
end
