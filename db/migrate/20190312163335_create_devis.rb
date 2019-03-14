class CreateDevis < ActiveRecord::Migration[5.2]
  def change
    create_table :devis do |t|
      t.belongs_to :who
      t.belongs_to :activity
      t.belongs_to :type
      t.belongs_to :function
      t.belongs_to :user
      t.timestamps
    end
  end
end
