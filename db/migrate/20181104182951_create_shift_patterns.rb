class CreateShiftPatterns < ActiveRecord::Migration[5.2]
  def change
    create_table :shift_patterns do |t|
      t.references :planning_period, foreign_key: true
      t.time :shift_start
      t.time :shift_length
      t.time :breaks
      t.string :requirements

      t.timestamps
    end
  end
end
