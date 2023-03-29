class WorkoutsController < ApplicationController
   
    def create 
        workout = Workout.create!(workout_params)
        render json: workout
    end

    def index 
        workout = Workout.all 
        render json: workout
    end

    def show 
        workout = Workout.find(params[:id])
        render json: workout
    end


   private 

   def workout_params 
    params.permit(:name, :weight, :date, :category)
   end

end
