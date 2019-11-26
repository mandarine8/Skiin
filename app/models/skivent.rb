class Skivent < ApplicationRecord
  belongs_to :resort
  belongs_to :user
  has_many :bookings

  validates :title, presence: true
  validates :date, presence: true
  validates :description, presence: true
  validates :level, presence: true
  validates :number_of_place, presence: true
  validates :car, presence: true
end
