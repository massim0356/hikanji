class CreateKanjis < ActiveRecord::Migration[6.0]
  def change
    create_table :kanjis do |t|
      t.string :character
      t.integer :grade
      t.integer :stroke_count
      t.string :meanings
      t.string :kun_readings
      t.string :on_readings
      t.integer :jlpt

      t.timestamps
    end
  end
end
