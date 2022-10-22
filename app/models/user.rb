class User < ApplicationRecord
    has_many :books

    validates :name, presence: true, length: { in: 1..30 }
end
