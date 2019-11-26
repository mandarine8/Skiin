class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :skivent

  validates :status, presence: true, inclusion: { in: ["pending", "accepted", "declined"] }
end
