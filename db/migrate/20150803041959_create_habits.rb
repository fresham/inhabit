class CreateHabits < ActiveRecord::Migration
  def change
    create_table :habits do |t|
      t.string :name
      t.boolean :postive
      t.boolean :negative

      t.timestamps null: false
    end
  end
end
