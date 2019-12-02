class Skivent < ApplicationRecord
  belongs_to :resort
  belongs_to :user
  has_many :favorites
  has_many :bookings
  include PgSearch::Model
  pg_search_scope :search_by_title,
    against: [:title],
    using: {
      tsearch: { prefix: true }
    }
  validates :title, presence: true
  validates :date, presence: true
  validates :description, presence: true
  validates :level, presence: true
  validates :number_of_place, presence: true
end
