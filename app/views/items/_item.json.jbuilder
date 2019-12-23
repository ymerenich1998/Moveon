json.extract! item, :id, :name, :category, :price, :count, :created_at, :updated_at
json.url item_url(item, format: :json)
