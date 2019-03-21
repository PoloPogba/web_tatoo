class AddTrackableColumns < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      ## Trackable
      t.column :sign_in_count, :integer, :default => 0
      t.column :current_sign_in_at, :datetime
      t.column :last_sign_in_at, :datetime
      t.column :current_sign_in_ip, :string
      t.column :last_sign_in_ip, :string
    end
  end
end

