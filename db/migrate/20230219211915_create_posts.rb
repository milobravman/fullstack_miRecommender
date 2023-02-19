class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.primary_key :id
      t.string :name
      t.references :like, null: false, foreign_key: true
      t.references :dislike, null: false, foreign_key: true
      t.string :photo
      t.text :Discrition

      t.timestamps
    end
  end
end
