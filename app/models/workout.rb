class Workout < ApplicationRecord
    has_many :exercise_logs
    has_many :users, through: :exercise_logs
    has_many :exercises

    
end
