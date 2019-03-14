class CreateFormusers < ActiveRecord::Migration[5.2]
  def change
    create_table :formusers do |t|
      t.belongs_to :user
      t.belongs_to :who
      t.belongs_to :activity
      t.belongs_to :type
      t.timestamps
    end
  end
end
