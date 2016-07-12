class Training < ActiveRecord::Base

  validates :name, presence:true
  validates :description,presence: true

  validates :url, presence: true

  validates :part,
            numericality:{
              only_integer: true,greater_than_or_equal_to:1,less_than_or_equal_to:6
            }

  def deleteable?
    menu = Menu.joins(:trainings).merge(Training.where(id: self.id))
    return menu.present?
  end
end
