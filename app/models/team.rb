class Team < ApplicationRecord
  belongs_to :manager, foreign_key: 'manager_id', class_name: 'User'
  has_many :users
end
