class CreateShifts < ActiveRecord::Migration[5.2]
  def change
    create_table :shifts do |t|
      t.references :shift_pattern, foreign_key: true
      t.integer :number_of_staff
      t.string :requirements
      t.date :date

      t.timestamps
    end
  end
end
