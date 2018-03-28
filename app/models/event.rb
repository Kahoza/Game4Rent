class Event < ApplicationRecord
  has_many :bookings
  belongs_to :game
  has_many :users
end
