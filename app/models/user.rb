class User < ApplicationRecord
  has_one_attached :picture
  validate :picture
    # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :locations, dependent: :destroy
  has_many :games
end
