class Book < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
  
    validates :title, presence: true, length: { in: 1..30 }
    validates :chapters, presence: true, numericality: { only_integer: true }
    validates :image_url, presence: true
    validates :description, presence: true, length: { in: 1..1500 }
    validates :category, presence: true
    validates :author, presence: true, length: { in: 1..20 }
  end
  