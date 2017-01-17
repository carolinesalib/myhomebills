class CreateSubgroups < ActiveRecord::Migration[5.0]
  def change
    create_table :subgroups do |t|
      t.string :name
      t.text :description
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
