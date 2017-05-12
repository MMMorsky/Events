class Event < ApplicationRecord
  has_many :comments

  has_many :attendances
  has_many :users, through: :attendances
end
