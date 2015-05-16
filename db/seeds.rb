# Food.create(:name => "tomato", :image => "", :days_to_expiration => 7, )

# Food.create(:name => "squash", :image => "", :days_to_expiration => 5)

# Food.create(:name => "pineapple", :image => "", :days_to_expiration => 5)

# Food.create(:name => "apple", :image => "", :days_to_expiration => 28)

# Food.create(:name => "strawberry", :image => "", :days_to_expiration => 5)

FoodCategory.create(:name => "Fruits", :image => "")

# FoodCategory.create(:name => "Vegetable", :image => "")

# FoodCategory.create(:name => "Meats", :image => "")

# FoodCategory.create(:name => "Diary", :image => "")

# FoodCategory.create(:name => "Deli", :image => "")

fruit = FoodCategory.find_by_name("Fruits")

Food.create(:name => "banana", :food_category => fruit, :image => "http://upload.wikimedia.org/wikipedia/commons/4/4c/Bananas.jpg", :days_to_expiration => 7)