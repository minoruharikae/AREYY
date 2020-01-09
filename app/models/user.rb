class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :piercings
  has_many :earrings
  has_many :rings
  has_many :bracelets
  has_many :necklaces
  mount_uploader :image, ImageUploader
end
