class Review < ApplicationRecord
  belongs_to :scooter
  belongs_to :renter, class_name: "User"

  validates :comment, presence: true
  validates :rating, presence: true
end
