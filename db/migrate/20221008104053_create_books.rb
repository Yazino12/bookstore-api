class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :chapters
      t.string :image_url
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
