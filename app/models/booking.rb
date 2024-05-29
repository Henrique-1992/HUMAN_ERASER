class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :killer
  validates :start_time, :end_time, presence: true
  validate :end_time_is_after_start_time

  private

  def end_time_is_after_start_time
    if start_time.present? && end_time.present? && end_time < start_time
      errors.add(:end_time, "End time is before start time")
    end
  end
end
