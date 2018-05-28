class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   attachment :user_image
   attachment :image

   has_many :orders
   has_many :receptions
   has_many :instruments

   belongs_to :genre
   belongs_to :affiliation

end
