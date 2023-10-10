class Comment < ApplicationRecord
  belongs_to :confession
  validates :comment, presence: true, length: {minimum: 3, maximum: 250}
end
