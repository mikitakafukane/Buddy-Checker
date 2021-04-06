class CreateStudentNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :student_notifications do |t|
      t.integer :visitor_id,    null: false, foreign_key: true
      t.integer :visited_id,    null: false, foreign_key: true
      t.integer :curriculum_id,              foreign_key: true
      t.integer :comment_id,                 foreign_key: true
      t.integer :favorite_id,                foreign_key: true
      t.integer :post_id,                    foreign_key: true
      t.timestamps
    end
  end
end
