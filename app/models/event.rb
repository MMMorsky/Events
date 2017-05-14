class Event < ApplicationRecord
  has_many :comments
  belongs_to :category

  has_many :attendances
  has_many :users, through: :attendances

  validates :name,
            length: { minimum: 3, maximum: 35 }
  validates :preview,
            length: { minimum: 3, maximum: 150 }
end
