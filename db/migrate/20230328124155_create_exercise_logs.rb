class CreateExerciseLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_logs do |t|
      t.references :user, null: false, foreign_key: true
      t.references :workout, null: false, foreign_key: true
      t.integer :duration
      t.date :date

      t.timestamps
    end
  end
end
