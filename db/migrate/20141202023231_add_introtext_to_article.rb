class AddIntrotextToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :introtext, :text
  end
end
