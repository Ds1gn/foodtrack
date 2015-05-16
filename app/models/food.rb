class Food < ActiveRecord::Base
  belongs_to :food_category

  def self.get_foodcategory(category)
    @new_food_category = FoodCategory.new(params[:id])
  end
end
