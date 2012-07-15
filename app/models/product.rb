class Product < ActiveRecord::Base
  attr_accessible :description, :name, :photo_url
end
