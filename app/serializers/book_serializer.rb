class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :isbn, :price, :short_description

  belongs_to :author
end
