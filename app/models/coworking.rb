class Coworking < ApplicationRecord
  has_many :users, throug: :bookings
  has_many :bookings
end
