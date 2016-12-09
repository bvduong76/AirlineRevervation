class Airport < ApplicationRecord
  validates :code, uniqueness: true, presence: true, length: {is: 3}
  validates :name, presence: true
end
