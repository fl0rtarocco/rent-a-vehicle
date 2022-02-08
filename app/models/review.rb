class Review < ApplicationRecord
  belongs_to :booking
  validates :comment, presence: true
  validates :stars, presence: true
  validates :stars, inclusion: { in: [0, 1, 2, 3, 4, 5], allow_nil: false }
end
