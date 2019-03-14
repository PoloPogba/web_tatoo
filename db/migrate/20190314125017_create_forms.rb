class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.belongs_to :guest
      t.belongs_to :who
      t.belongs_to :activity
      t.belongs_to :type
      t.timestamps
    end
  end
end
