class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :admin_user_id
      t.integer :category_id
      t.string :keyword
      t.string :description
      t.string :thumbnail_path
      t.text :content
      t.integer :count
      t.boolean :is_publish

      t.timestamps
    end
  end
end
