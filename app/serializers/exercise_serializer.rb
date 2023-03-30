class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :calories, :description, :workout_id
  belongs_to :workout
end
