class Pricelevel < ApplicationRecord
  validates :name,uniqueness: true
  validates :name, :price , presence: true
end
