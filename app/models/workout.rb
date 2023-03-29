class Workout < ApplicationRecord
    validates :name, presence: true
    validates :weight, presence: true
    validates :category, presence: true
end
