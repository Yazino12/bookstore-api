class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :chapters, :image_url, :description, :category, :author

  has_many :comments
  belongs_to :user
end
