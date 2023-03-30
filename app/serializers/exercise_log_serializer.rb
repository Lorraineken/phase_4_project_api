class ExerciseLogSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :workout_id, :duration, :date
  belongs_to :user
  belongs_to :workout
end
