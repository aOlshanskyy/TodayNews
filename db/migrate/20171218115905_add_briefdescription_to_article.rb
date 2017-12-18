class AddBriefdescriptionToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :shortbody, :string
  end
end
