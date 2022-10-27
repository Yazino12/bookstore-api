class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :book_id

  belongs_to :book
end
