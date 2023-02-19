class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.primary_key :id
      t.string :name
      t.references :like, null: false, foreign_key: true
      t.references :dislike, null: false, foreign_key: true

      t.timestamps
    end
  end
end
