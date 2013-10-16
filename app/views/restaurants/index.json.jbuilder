json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :name, :address, :founded_at, :email
  json.url restaurant_url(restaurant, format: :json)
end
