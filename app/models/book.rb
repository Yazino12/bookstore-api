class Book < ApplicationRecord
  has_many :comments

  validates :title, presence: true, length: { in: 1..30 }
  validates :chapters, presence: true, numericality: { only_integer: true }
  validates :image_url, presence: true
  validates :description, presence: true, length: { in: 1..300 }
  validates :category, presence: true
end
