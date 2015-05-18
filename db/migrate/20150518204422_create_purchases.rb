class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :date_of_purchase
      t.string :user_id
      t.string :expiration_date
      t.string :reminder_date

      t.timestamps null: false
    end
  end
end
