class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :weight, :instructor, :category
end
