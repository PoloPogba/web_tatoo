class CreateFormfuctions < ActiveRecord::Migration[5.2]
  def change
    create_table :formfuctions do |t|
      t.belongs_to :formuser
      t.belongs_to :function      
      t.timestamps
    end
  end
end
