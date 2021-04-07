class RenameImageColumnToStudents < ActiveRecord::Migration[5.2]
  def change
    rename_column :students, :image, :image_id
  end
end
