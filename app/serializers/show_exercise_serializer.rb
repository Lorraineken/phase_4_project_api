class ShowExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :weight, :instructor, :category
  has_many :exercises
end
