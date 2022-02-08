class Booking < ApplicationRecord
  belongs_to :vehicle
  belongs_to :user
  has_many :reviews
  validates :status, inclusion: { in: ["Accepted", "Pending", "Rejected"] }
  validates :booking_from, :booking_to, presence: true
  # validate :booking_to_after_booking_from

  # private

  # def booking_to_after_booking_from
  #   return if booking_to.blank? || booking_from.blank?

  #   if booking_to < booking_from
  #     errors.add(:booking_from, "must be after the start date")
  #   end
  # end
end
