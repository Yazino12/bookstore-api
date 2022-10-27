class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :image_url
      t.string :category
      t.string :author
      t.text :description
      t.integer :chapters
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
