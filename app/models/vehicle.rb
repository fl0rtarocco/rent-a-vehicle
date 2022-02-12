class Vehicle < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_vehicle,
    against: [:category, :price, :name, :address, :description, :address],
    using: {
      tsearch: { prefix: true }
    }
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :category, presence: true, inclusion: { in: ["Elevator", "Car", "Motorcycle", "Scooter", "Giraffe", "Truck", "Tanks", "Private Jet"] }
  validates :name, presence: true
  validates :price, presence: true, numericality: true
  has_many_attached :photos
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
