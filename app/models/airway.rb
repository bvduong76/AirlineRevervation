class Airway < ApplicationRecord
  validates :code, format: { with: /BL[0-9][0-9][0-9]/,
                                    message: "Code start by 'BL' and length is 5" }
  validates :start, :end, :day, :time , presence: true
end
