class Climber < ApplicationRecord
  has_many :ticks, dependent: :destroy
  validates :name, presence: true
end
