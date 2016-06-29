class User < ActiveRecord::Base
  has_secure_password

  validates :name,presence:true

  validates :login,
            presence: true,
            length: { minimum: 6,maximum: 15 }

  validates :password_digest,
            length: { minimum: 6,maximum: 15 }

  validates :sex,numericality: {
    only_integer: true,greater_than_or_equal_to:1,less_than_or_equal_to:2
  }

  validates :height, presence: true
  validates :weight, presence: true

  validates :body_type,numericality: {
    only_integer: true,greater_than_or_equal_to:1,less_than_or_equal_to:3
  }
end
