class CreateDailies < ActiveRecord::Migration
  def change
    create_table :dailies do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
