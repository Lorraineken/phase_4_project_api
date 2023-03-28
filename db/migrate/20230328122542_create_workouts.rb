class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.boolean :weight
      t.date :date
      t.string :category

      t.timestamps
    end
  end
end
