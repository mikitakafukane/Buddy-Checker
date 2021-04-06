class CreateProgresses < ActiveRecord::Migration[5.2]
  def change
    create_table :progresses do |t|
      t.integer :student_id,     null: false, foreign_key: true
      t.integer :curriculums_id, null: false, foreign_key: true
      t.boolean :is_done,        null: false, default: false
      t.timestamps
    end
  end
end
