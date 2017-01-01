class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.string :name
      t.string :address
      t.string :rating

      t.timestamps null: false
    end
  end
end
