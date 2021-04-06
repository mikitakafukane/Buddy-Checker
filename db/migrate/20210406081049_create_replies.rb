class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.integer :contact_id, null: false, foreign_key: true
      t.string :title,       null: false
      t.string :content,     null: false
      t.timestamps
    end
  end
end
