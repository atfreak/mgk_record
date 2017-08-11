class DropArticle < ActiveRecord::Migration[5.0]
  def change
    drop_table :articles
    drop_table :categories
  end
end
