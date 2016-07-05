class User < ActiveRecord::Base
  has_secure_password

  validates :name,presence:true

  validates :login,
            presence: true,
            length: { minimum: 6,maximum: 15 },
            format: { with: /\A[a-z0-9]+\z/i }

  validates :sex,numericality: {
    only_integer: true,greater_than_or_equal_to:1,less_than_or_equal_to:2
  }

  validates :height, presence: true
  validates :weight, presence: true

  validates :body_type,numericality: {
    only_integer: true,greater_than_or_equal_to:1,less_than_or_equal_to:3
  }

  validate :custom_validate

  def custom_validate
    if self.password.present?
      return errors.add(:password, "パスワードが短すぎます") if self.password.length <= 6
      return errors.add(:password, "パスワードが短すぎます") if self.password.length >= 15
    end
  end
end
