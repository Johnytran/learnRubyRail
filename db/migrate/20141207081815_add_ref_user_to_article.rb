class AddRefUserToArticle < ActiveRecord::Migration
  def change
    change_table :articles do |t|
      t.references :user, index: true 
    end
  end
end
