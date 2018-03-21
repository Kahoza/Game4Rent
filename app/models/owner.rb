class Owner < ApplicationRecord
  has_many :games
  validates :first_name presence: true
end
