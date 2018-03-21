class Game < ApplicationRecord
  belongs_to :owner
  validates :name presence: true
  validates :description presence: true
  validates :price presence: true
end
