class Booking < ApplicationRecord
  belongs_to :owner
  belongs_to :game
end
