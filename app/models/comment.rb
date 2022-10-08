class Comment < ApplicationRecord
  belongs_to :book

  validates :text, presence: true, length: { in: 1..300 }
end
