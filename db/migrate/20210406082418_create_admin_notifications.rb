class CreateAdminNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_notifications do |t|
      t.integer :visited_id, null: false, foreign_key: true
      t.integer :reply_id,   null: false, foreign_key: true
      t.timestamps
    end
  end
end
