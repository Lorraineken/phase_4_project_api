class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.string :name, null:false
      t.boolean :weight, null:false
      t.string :instructor, null:false
      t.string :category, null:false

      t.timestamps
    end
  end
end
