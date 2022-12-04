class CreateTalks < ActiveRecord::Migration[7.0]
  def change
    create_table :talks do |t|
      t.string :category
      t.string :body
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
