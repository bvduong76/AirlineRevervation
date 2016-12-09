class Flight < ApplicationRecord
  validates :code, :pricelevel, :grade, :slot, :price , presence: true
end
