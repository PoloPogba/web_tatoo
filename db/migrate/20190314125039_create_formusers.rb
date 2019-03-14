class CreateFormusers < ActiveRecord::Migration[5.2]
  def change
    create_table :formusers do |t|

      t.timestamps
    end
  end
end
