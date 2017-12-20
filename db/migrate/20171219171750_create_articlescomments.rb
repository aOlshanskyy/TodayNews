class CreateArticlescomments < ActiveRecord::Migration[5.1]
  def change
    create_table :articlescomments do |t|
      t.string :textofcom
      t.integer :article_id
      t.integer :user_id

      t.timestamps
    end
  end
end
