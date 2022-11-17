class Game < ApplicationRecord
  belongs_to :user
  has_one_attached :picture
  has_many :locations
end
