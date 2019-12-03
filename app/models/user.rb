class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :skivents
  has_many :bookings
  has_many :booked_skivents, through: :bookings, source: :skivent

  has_many :favorites
  has_many :saved_skivents, through: :favorites, source: :skivent
  has_many :received_ratings, through: :skivents, source: :ratings

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :level, presence: true
  validates :picture, presence: true


    def average_rating
      if self.received_ratings.size > 0
        average = []
        self.received_ratings.each do |rating|
          average << rating.rating || 0
        end
        (average.sum) / average.size
      end
  end
end
