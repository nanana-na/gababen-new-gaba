class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.string :title, null: false
      t.string :body, null: false
      t.string :note_image
      t.references :user,null: false, foreign_key: true
      t.references :book, foreign_key: true
      t.timestamps
    end
  end
end
