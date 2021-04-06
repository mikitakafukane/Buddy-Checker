class CreateBelongings < ActiveRecord::Migration[5.2]
  def change
    create_table :belongings do |t|
      t.integer :student_id, null: false, foreign_key: true
      t.integer :group_id,   null: false, foreign_key: true
      t.timestamps
    end
  end
end
