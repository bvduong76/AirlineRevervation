json.extract! flightdetail, :id, :booking, :flight, :created_at, :updated_at
json.url flightdetail_url(flightdetail, format: :json)