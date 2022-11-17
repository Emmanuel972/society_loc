class Game < ApplicationRecord

  has_one_attached :picture
  has_many :locations
  belongs_to :user
end
