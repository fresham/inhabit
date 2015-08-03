class CreateHabitCompletions < ActiveRecord::Migration
  def change
    create_table :habit_completions do |t|
      t.references :habit, index: true, foreign_key: true
      t.datetime :completed_at
      t.boolean :success

      t.timestamps null: false
    end
  end
end
