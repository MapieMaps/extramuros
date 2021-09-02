class Coworking < ApplicationRecord
  has_many :users, through: :bookings
  has_many :bookings
  has_many_attached :photos
  has_one_attached :avatar
  has_many :coworking_equipements
  has_many :equipements, through: :coworking_equipements
end
