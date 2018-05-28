class Order < ApplicationRecord

   # has_many :users, through: :receptions
   has_many :receptions
   # accepts_nested_attributes_for :receptions
   belongs_to :user

end
