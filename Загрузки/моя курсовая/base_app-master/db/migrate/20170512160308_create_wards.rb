class CreateWards < ActiveRecord::Migration
  def change
    create_table :wards do |t|
      t.string :department, null: false
      t.integer :floor, null: false
      t.integer :capacity, null: false
      t.integer :number, null: false
      t.integer :num_of_pacients, default: 0

      t.timestamps null: false
      t.index :number, unique:true
    end
  end
end
