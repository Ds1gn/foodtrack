class AddCustomNotificationToFood < ActiveRecord::Migration
  def change
    add_column :foods, :rails, :string
    add_column :foods, :c, :string
  end
end
