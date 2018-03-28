class BookingsController < ApplicationController
  belongs_to :user
  belongs_to :event
end
