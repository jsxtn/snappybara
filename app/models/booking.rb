class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :camera
  has_many :reviews, dependent: :destroy
  validates :start_date, :end_date, :user, :camera, presence: true
  validates :end_date, comparison: { greater_than: :start_date }
end
