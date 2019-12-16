json.extract! order, :id, :user_id, :service_id, :customer_id, :date, :status, :created_at, :updated_at
json.url order_url(order, format: :json)
