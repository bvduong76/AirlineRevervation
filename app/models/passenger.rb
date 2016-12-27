class Passenger < ApplicationRecord
  validates :title, :firstname, :lastname, :booking, presence: true
end