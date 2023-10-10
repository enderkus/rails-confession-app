class Confession < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: {minimum: 3, maximum: 120}
  validates :confession, presence: true, length: {minimum: 20}
  validates :gender, presence: true, inclusion: {in: [0,1]}
end
