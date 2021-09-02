class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :coworking
end

def booked_date_range
  { from: :start_date, to: :end_date }
end

private

def end_date_after_start_date
  return if end_date.blank? || start_date.blank?
  if end_date < start_date
    errors.add(:end_date,"doit être après la date de début")
  end
end

