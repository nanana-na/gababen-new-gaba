class CreateFrindTalks < ActiveRecord::Migration[7.0]
  def change
    create_table :frind_talks do |t|
      t.references :user,null: false, foreign_key: true
      t.references :friend,null: false, foreign_key: true
      t.string :message, null: false
      t.timestamps
    end
  end
end
