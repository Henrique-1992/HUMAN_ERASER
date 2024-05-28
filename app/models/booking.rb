class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :killer
  validates :start_time, :end_time, presence: true
end
