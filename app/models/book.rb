class Book < ApplicationRecord
  validates :isbn, :isbn_format => true
  validates :short_description, presence: true, length: { maximum: 1000 }, on: :create, allow_nil: false

  belongs_to :author
end
