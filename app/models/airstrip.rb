class Airstrip < ApplicationRecord
  validates :start, :end , presence: true
end
