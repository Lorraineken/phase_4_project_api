# Palm fitness Backend

## Description
This is a backend application that allows users to track their exercises and workouts.

## Deployment link 
https://palm-gym-api.onrender.com

## Frontend Repo
https://github.com/Lorraineken/phase_4_project_react

## Technologies used
- Ruby on Rails[Ruby version 2.7.4 & Rails version 6.1.4]
- BCrypt gem for password/encryption/security authentication
- Sqlite database

## Installation
 1. Clone the repository 'https://github.com/Lorraineken/phase_4_project_api'  to your local machine.
2. Run `bundle install` to install all dependencies.
3. Run `rails db:migrate db:seed` to create the necessary database tables and data.
4. Start the server by running `rails server`.

## Databse relationships

* ExerciseLog belongs to one User and one Workout.
* Exercise belongs to one Workout and has many ExerciseLogs.
* User has many ExerciseLogs and many Workouts through ExerciseLogs.
* Workout has many ExerciseLogs, has many Users through ExerciseLogs, and has many Exercises.
 
## Contributors
<a href=" https://github.com/Lorraineken">Lorraine Kupa</a>

<a href="https://github.com/EvalyneMueke "> Evalyne Mueke</a>

License

MIT LICENSE






