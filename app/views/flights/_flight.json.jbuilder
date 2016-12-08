json.extract! flight, :id, :way, :grade, :pricelevel, :slot, :price, :created_at, :updated_at
json.url flight_url(flight, format: :json)