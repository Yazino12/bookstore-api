class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :book_id
end
