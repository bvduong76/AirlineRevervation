class Flight < ApplicationRecord
  validates :way, :pricelevel, :grade, :slot, presence: true
  validates :way, uniqueness: {scope: :pricelevel, message: "and  pricelevel already exists !"}
end
