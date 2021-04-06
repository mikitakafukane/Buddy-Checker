class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :student_id, null: false, foreign_key: true
      t.integer :comment_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
