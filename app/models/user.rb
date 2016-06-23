class User < ActiveRecord::Base
  has_secure_password

  validates :name,presence:true

  validates :login,
            presence: true,
            length: { minimum: 6,maximum: 15 }

  validates :password_digest,
            length: { minimum: 6,maximum: 15 }

  validates :sex, presence: true

  validates :height, presence: true
  validates :weight, presence: true
end
