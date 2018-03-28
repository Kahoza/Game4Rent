class Event < ApplicationRecord
  belongs_to :booking
  belongs_to :game
end
