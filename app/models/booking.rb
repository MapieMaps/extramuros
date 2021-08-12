class Booking < ApplicationRecord
  belongs_to :users
  belongs_to :manager, class_name: 'User'
  has_one :coworking
  has_one :user
end
