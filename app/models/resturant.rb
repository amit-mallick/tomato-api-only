class Resturant < ActiveRecord::Base
  has_many :ratings
  attr_accessible :description, :image, :location, :name, :price
  validates :name, presence: :true
end
