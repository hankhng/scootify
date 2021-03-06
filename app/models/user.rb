class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:omniauthable, omniauth_providers: %i[facebook]

  has_many :scooters, foreign_key: "owner_id"
  has_many :bookings, foreign_key: "renter_id"
  has_many :reviews, foreign_key: "renter_id"

  validates :first_name, presence: true
  validates :last_name, presence: true
  has_one_attached :photo
  # validates :license_type, presence: true, if: :user_is_renter?

  # def user_is_renter?
  #   bookings.count.positive?
  # end
end
