class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :game
  monetize :price_cents
end
