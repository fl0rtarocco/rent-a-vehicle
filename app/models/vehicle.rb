class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :category, presence: true, inclusion: { in: ["Elevator", "Car", "Motorcycle", "Scooter", "Giraffe", "Truck", "Tanks", "Private Jet"] }
end
