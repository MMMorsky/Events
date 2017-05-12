class User < ApplicationRecord
  has_many :comments
  has_many :events
  has_many :attendances, dependent: :destroy
  has_many :events, through: :attendances

  validates :username, uniqueness: true,
            length: { minimum: 4, maximum: 10 }
  validates :password, length: { minimum: 4 }

  has_secure_password


  def is_attending?(event)
    events.include? event
  end

end
