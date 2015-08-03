class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :name
      t.datetime :completed_at

      t.timestamps null: false
    end
  end
end
