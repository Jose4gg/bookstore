class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.decimal :price
      t.string :short_description
      t.belongs_to :author

      t.timestamps
    end
  end
end
