class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|

      t.string :title, null: false
      t.string :body
      t.string :image
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
