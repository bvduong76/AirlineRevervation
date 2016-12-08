json.extract! booking, :id, :code, :time, :price, :status, :created_at, :updated_at
json.url booking_url(booking, format: :json)