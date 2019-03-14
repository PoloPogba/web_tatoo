class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.belongs_to :guest
      t.belongs_to :who
      t.belongs_to :activity, optional: true
      t.belongs_to :type, optional: true
      t.timestamps
    end
  end
end
