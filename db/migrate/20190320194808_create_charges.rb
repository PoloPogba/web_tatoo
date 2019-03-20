class CreateCharges < ActiveRecord::Migration[5.2]
  def change
    create_table :charges do |t|
      t.integer :stripe_customer_id
      t.belongs_to :user
      t.timestamps
    end
  end
end
