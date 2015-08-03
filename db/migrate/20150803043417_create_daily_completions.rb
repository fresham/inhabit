class CreateDailyCompletions < ActiveRecord::Migration
  def change
    create_table :daily_completions do |t|
      t.references :daily, index: true, foreign_key: true
      t.datetime :completed_at

      t.timestamps null: false
    end
  end
end
