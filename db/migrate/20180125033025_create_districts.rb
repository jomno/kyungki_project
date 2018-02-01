class CreateDistricts < ActiveRecord::Migration[5.1]
  def change
    create_table :districts do |t|
      t.string :title
      t.references :city, foreign_key: true

      t.timestamps
    end
    add_index :districts, :title
  end
end
