class CreateBills < ActiveRecord::Migration[5.0]
  def change
    create_table :bills do |t|
      t.string :name
      t.date :due_date
      t.decimal :value
      t.references :subgroup, foreign_key: true

      t.timestamps
    end
  end
end
