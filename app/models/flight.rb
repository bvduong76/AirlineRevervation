class Flight < ApplicationRecord
  validates :way, :pricelevel, :grade, :slot, :price , presence: true
end
