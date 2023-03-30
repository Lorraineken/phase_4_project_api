class ExerciseLogSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :exercise_id, :duration, :date
  belongs_to :user, serializer: :user
  belongs_to :exercise, serializer: :exercise
end
