class Scooter < ApplicationRecord

  belongs_to :owner, class_name: "User"
  has_many :bookings

  validates :brand, presence: true
  validates :model, presence: true
  validates :transmission, presence: true, inclusion: { in: %w(manual automatic)}
  validates :year, presence: true
  validates :price_per_day, presence: true
  validates :address, presence: true
  validates :license_type, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end

#
