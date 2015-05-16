json.array!(@foods) do |food|
  json.extract! food, :id, :name, :image, :days_to_expiration
  json.url food_url(food, format: :json)
end
