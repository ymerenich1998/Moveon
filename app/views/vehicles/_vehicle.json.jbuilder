json.extract! vehicle, :id, :vin, :model, :mark, :year, :color, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
