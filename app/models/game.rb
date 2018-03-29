class Game < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :events, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
