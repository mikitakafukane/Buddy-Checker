class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.integer :student_id, null: false, foreign_key: true
      t.string :title,       null: false
      t.string :content,     null: false
      t.timestamps
    end
  end
end
