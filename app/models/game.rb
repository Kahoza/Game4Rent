class Game < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
