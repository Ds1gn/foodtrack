json.array!(@custom_notifications) do |custom_notification|
  json.extract! custom_notification, :id, :user_id, :food_id, :days
  json.url custom_notification_url(custom_notification, format: :json)
end
