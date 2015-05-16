class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :image
      t.integer :days_to_expiration

      t.timestamps null: false
    end
  end
end
