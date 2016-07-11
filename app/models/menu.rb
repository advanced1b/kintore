class Menu < ActiveRecord::Base

  has_many :trainings, through: :training_menus
  has_many :training_menus, dependent: :destroy


  attr_accessor :training_attributes
  validates :name,
            presence: true,
            length: {maximum: 255}
  validates :description,
            presence: true,
            length: {maximum: 65535}

  validates :condition_sex, presence: true
  validates :condition_term, presence: true
  validates :condition_body_type, presence: true
end
