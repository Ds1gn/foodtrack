class CreateCustomNotifications < ActiveRecord::Migration
  def change
    create_table :custom_notifications do |t|
      t.references :user, index: true, foreign_key: true
      t.references :food, index: true, foreign_key: true
      t.integer :days

      t.timestamps null: false
    end
  end
end
