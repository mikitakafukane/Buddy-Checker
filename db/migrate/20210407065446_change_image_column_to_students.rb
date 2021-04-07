class ChangeImageColumnToStudents < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :image, :string
    add_column :students, :image, :string
    remove_column :students, :academic_month, :integer
    add_column :students, :academic_month, :integer
  end
end
