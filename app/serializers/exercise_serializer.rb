class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :calories, :description, :workout_id
  belong_to :workout, serializer: :workout
end
