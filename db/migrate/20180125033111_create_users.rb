class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.references :district, foreign_key: true
      t.string :phone
      t.integer :birth

      t.timestamps
    end
    add_index :users, :name
  end
end
