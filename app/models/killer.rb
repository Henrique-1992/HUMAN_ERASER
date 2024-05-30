class Killer < ApplicationRecord
  has_many :bookings
  has_many_attached :photos
  has_many :users, through: :bookings
  belongs_to :user
  validates :first_name, :last_name, :description, :specialty, presence: true
  validates :description, length: { minimum: 6 }

  include PgSearch::Model
  pg_search_scope :search_by_first_name_and_last_name_and_description_and_speciality,
    against: [ :first_name, :last_name, :description, :specialty ],
    using: {
      tsearch: { prefix: true }
    }
end
