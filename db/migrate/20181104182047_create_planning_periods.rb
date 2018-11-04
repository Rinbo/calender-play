class CreatePlanningPeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :planning_periods do |t|
      t.string :month

      t.timestamps
    end
  end
end
