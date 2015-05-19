class Food < ActiveRecord::Base
  belongs_to :food_category

  has_many :custom_notifications

  # def self.get_foodcategory(category)
  #   @new_food_category = FoodCategory.new(params[:id])
  # end
end
