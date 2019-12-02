class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :skivent
  validates :rating, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
end
