class Coworking < ApplicationRecord
  has_many :users, through: :bookings
  has_many :bookings
  has_many_attached :photos
  has_one_attached :avatar

end
