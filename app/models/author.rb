class Author < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  has_many :books

  def name
    return self.first_name + " " + self.last_name
  end
end
