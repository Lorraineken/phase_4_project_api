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

    def update 
        workout = Workout.find(params[:id])
        workout.update!(workout_params)
        render json: workout
    end

    def destroy 
        workout = Workout.find(params[:id])
        workout.destroy
    end


   private 

   def workout_params 
    params.permit(:name, :weight, :date, :category)
   end

end
