class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :chapters, :image_url, :description, :category, :author

  has_many :comments
end
