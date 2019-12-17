# frozen_string_literal: true

json.extract! order, :id, :worker_id, :vehicle_id, :service_id, :customer_id, :date, :status, :created_at, :updated_at
json.url order_url(order, format: :json)
