class Menu < ActiveRecord::Base
has_many :tranings, through: :traning_menus
has_many :traning_menus, dependent: :destroy


  validates :name,
    length: {maximum: 255}
  validates :description,
    length: {maximum: 65535}
end
