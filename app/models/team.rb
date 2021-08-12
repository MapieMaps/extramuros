class Team < ApplicationRecord
  has_many :users
  # has_one :manager, class_name: 'User'
end
