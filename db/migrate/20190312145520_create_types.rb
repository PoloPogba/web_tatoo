class CreateTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :types do |t|
      t.string :title
      t.belongs_to :activity
      t.timestamps
    end
  end
end
