class Booking < ApplicationRecord
  belongs_to :vehicle
  belongs_to :user

  validates :status, inclusion: { in: ["Accpeted", "Pending", "Rejected"] }

end
