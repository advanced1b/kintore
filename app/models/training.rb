class Training < ActiveRecord::Base

  validates :name, presence:true
  validates :description,
            presence: true,
            length:{minimum: 10,maximum: 140}

  validates :url,
            presence: true

  validates :part,
            numericality:{
              only_integer: true,greater_than_or_equal_to:1,less_than_or_equal_to:6
            }
end
