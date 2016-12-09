class Flightdetail < ApplicationRecord
  validates :flight, :booking, presence: true
end
