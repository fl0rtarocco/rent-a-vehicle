class Booking < ApplicationRecord
  belongs_to :vehicle
  belongs_to :user
  validates :booking_from, presence: true
  validates :booking_to, presence: true
end
