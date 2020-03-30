class Book < ApplicationRecord
  include PgSearch::Model
  validates :title, presence: true
  validates :price, presence: true
  validates :isbn, :isbn_format => true
  validates :short_description, presence: true, length: { maximum: 1000 }, on: :create, allow_nil: false
  
  default_scope { includes(:author).order('created_at ASC') }
  pg_search_scope :search_by_title, against: :title
  
  belongs_to :author
end
