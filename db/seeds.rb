# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

workout_names = [  "CrossFit",  "Spin class",  "Yoga",  "Pilates",  "Zumba",  "Barre",  "Kickboxing",  "HIIT",  "Bootcamp",  "Boxing",  "Running",  "Swimming",  "Cycling",  "Rowing",  "Weightlifting"]

15.times do
  Workout.create!(
    name: workout_names.sample,
    weight: [true, false].sample,
    instructor: Faker::Name.name,
    category: %w[Cardio Strength Yoga].sample
  )
end

# create 45 exercises
45.times do |n|
    # select a random workout id from 1 to 15
    workout_id = rand(1..15)
    
    # create the exercise with a unique name and description
    Exercise.create!(
      name: "Exercise #{n+1} for Workout #{workout_id}",
      calories: rand(50..500),
      description: "This is exercise #{n+1} for Workout #{workout_id}. It is a #{['beginner', 'intermediate', 'advanced'].sample} level exercise that targets the #{['arms', 'legs', 'core', 'back', 'glutes'].sample}.",
      workout_id: workout_id
    )
  end
  





#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
