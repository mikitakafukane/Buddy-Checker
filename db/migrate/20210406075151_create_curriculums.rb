class CreateCurriculums < ActiveRecord::Migration[5.2]
  def change
    create_table :curriculums do |t|
      t.integer :category_id, null: false, foreign_key: true
      t.string :name,         null: false
      t.timestamps
    end
  end
end
