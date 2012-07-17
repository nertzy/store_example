class Product < ActiveRecord::Base
  attr_accessible :description, :name, :photo_url

  validates :description, presence: true
  validates :name, presence: true
  validates :photo_url, presence: true
end
