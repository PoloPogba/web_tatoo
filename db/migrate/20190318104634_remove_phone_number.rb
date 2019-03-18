class RemovePhoneNumber < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :phone_number
  end
end
