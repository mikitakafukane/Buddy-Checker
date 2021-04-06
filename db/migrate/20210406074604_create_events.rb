class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :student_id, null: false, foreign_key: true
      t.integer :group_id,   null: false, foreign_key: true
      t.string :title,       null: false
      t.string :discription
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
    end
  end
end
