# frozen_string_literal: true

json.extract! vehicle, :id, :vin, :model_id, :year, :colour, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
