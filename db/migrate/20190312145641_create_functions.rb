class CreateFunctions < ActiveRecord::Migration[5.2]
  def change
    create_table :functions do |t|
      t.string :title
      t.decimal :price
      t.belongs_to :type
      t.timestamps
    end
  end
end
