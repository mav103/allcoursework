class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :second_name, null: false, limit:30
      t.string :first_name, null: false, limit:30
      t.string :last_name, null: false, limit:30
      t.string :passport, null: false, limit:30
      t.integer :insurance, null: false
      t.string :residence, null: false
      t.date :created, null: false
      t.string :allergy, null: false, limit:128
      t.integer :cart_number, null: false

      t.timestamps null: false
      t.index :passport, unique:true
      t.index :insurance, unique:true
      t.index :cart_number, unique:true
    end
  end
end
