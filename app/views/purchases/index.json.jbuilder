json.array!(@purchases) do |purchase|
  json.extract! purchase, :id, :date_of_purchase, :user_id, :expiration_date, :reminder_date
  json.url purchase_url(purchase, format: :json)
end
