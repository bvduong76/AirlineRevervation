class Booking < ApplicationRecord
  validates :code, :time, :price, :status , presence: true
end
