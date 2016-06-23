class Menu < ActiveRecord::Base
  validates :name,
    length: {maximum: 255}
  validates :description,
    length: {maximum: 65535}  
end
