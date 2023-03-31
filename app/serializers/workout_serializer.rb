class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :weight, :instructor, :category
 # has_many :exercises, serializer: :exercise
end
