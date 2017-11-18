class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :conclusion, null: false, limit:128
      t.string :title, null: false, limit:128
      t.date :rdate, null: false
      t.string :appointment, null: false, limit:128
      t.string :causes, null: false, limit:128
      t.string :first_inspection, null: false, limit:128
      t.string :results, null: false, limit:128

      t.timestamps null: false
    end
  end
end
