class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :full_name, :email
  #has many workouts
  
end
