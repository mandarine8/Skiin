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


  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :level, presence: true
  validates :picture, presence: true
end
