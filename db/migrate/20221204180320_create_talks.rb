class CreateTalks < ActiveRecord::Migration[7.0]
  def change
    create_table :talks do |t|
      t.string :category
      t.string :body,null: false
      t.references :user,null: false, foreign_key: true

      t.timestamps
    end
  end
end
