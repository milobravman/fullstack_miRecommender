class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :img
      t.references :like, null: false, foreign_key: true
      t.references :dislike, null: false, foreign_key: true

      t.timestamps
    end
  end
end
