class FoodCategory < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
 
  has_many :foods



end
