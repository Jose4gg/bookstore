class AddUniquenessIsbnToBook < ActiveRecord::Migration[6.0]
  def change
    add_index :books, [:isbn], unique: true
  end
end
