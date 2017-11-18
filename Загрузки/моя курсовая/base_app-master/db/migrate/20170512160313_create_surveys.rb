class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.references :result, null: false, index: true, foreign_key: true
      t.references :card, null: false, index: true, foreign_key: true
      t.references :ward, null: false, index: true, foreign_key: true
      t.string :cause, null: false
      t.date :entered, null: false
      t.date :ended, null: false
      t.string :epicrisis, null: false

      t.timestamps null: false
    end
  end
end
