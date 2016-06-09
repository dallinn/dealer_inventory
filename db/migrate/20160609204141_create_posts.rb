class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :model
      t.integer :price
      t.text :body
      t.string :manufacturer

      t.timestamps null: false
    end
  end
end
