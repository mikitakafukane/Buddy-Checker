class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :student_id,    null: false, foreign_key: true
      t.integer :curriculum_id, null: false, foreign_key: true
      t.string :content,        null: false
      t.timestamps
    end
  end
end
