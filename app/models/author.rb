class Author < ApplicationRecord
  has_many :books

  def name
    return self.first_name + self.last_name
  end
end
