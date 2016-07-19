class User < ActiveRecord::Base
  has_secure_password

  has_one :menu

  has_many :menus, through: :user_menus
  has_many :user_menus, dependent: :destroy

  after_save :create_user_menu

  validates :name,presence:true
  validates :password,length: {minimum: 6}

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

  validates :term,presence: true

  validate :custom_validate


  def custom_validate
    if self.password.present?
      return errors.add(:password, "パスワードが短すぎます") if self.password.length < 6
      return errors.add(:password, "パスワードが短すぎます") if self.password.length >= 15
    end
  end

  def create_user_menu
    menu = Menu.all
    menu = menu.where(condition_sex: self.sex)
    menu = menu.where(condition_term: self.term)
    menu = menu.where(condition_body_type: self.body_type)

    if menu.present?
      self.menus << menu
    else
      return true
    end
  end
end
