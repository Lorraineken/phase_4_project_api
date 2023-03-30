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





#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
