class Booking < ApplicationRecord
  belongs_to :renter, class_name: "User"
  belongs_to :scooter
  has_one :owner, through: :scooter

  # validates :start_date, presence: true
  # validates :end_date, presence: true
  # validate :end_date_cannot_be_before_start_date
  # validate :start_date_cannot_be_in_the_past
  validates :booking_price, presence: true

  # def start_date_cannot_be_in_the_past
  #   if !start_date.nil? && start_date < Date.today
  #     errors.add(:start_date, "can't be in the past")
  #   end
  # end

  # def end_date_cannot_be_before_start_date
  #   if !start_date.nil? && !end_date.nil? && end_date < start_date
  #     errors.add(:end_date, "can't be before the start date")
  #   end
  # end
end
