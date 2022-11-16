class Game < ApplicationRecord

  has_one_attached :picture
  has_many :locations
end
