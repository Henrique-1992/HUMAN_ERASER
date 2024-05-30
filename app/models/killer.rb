class Killer < ApplicationRecord
  has_many :bookings
  has_many_attached :photos
  has_many :users, through: :bookings
  belongs_to :user
  validates :first_name, :last_name, :description, :specialty, presence: true
  validates :description, length: { minimum: 6 }
end
