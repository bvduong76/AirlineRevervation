json.extract! passenger, :id, :title, :firstname, :lastname, :booking, :created_at, :updated_at
json.url passenger_url(passenger, format: :json)