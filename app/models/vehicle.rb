class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :category, presence: true, inclusion: { in: ["Elevator", "Car", "Motorcycle", "Scooter", "Giraffe", "Truck", "Tanks", "Private Jet"] }
  validates :name, presence: true
  validates :price, presence: true, numericality: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
