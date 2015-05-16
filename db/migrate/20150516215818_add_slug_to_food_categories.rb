class AddSlugToFoodCategories < ActiveRecord::Migration
  def change
    add_column :food_categories, :slug, :string
    add_index :food_categories, :slug, unique: true
  end
end
