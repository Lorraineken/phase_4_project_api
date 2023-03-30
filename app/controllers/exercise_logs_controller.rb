class ExerciseLogsController < ApplicationController
    before_action :authorize

    def index
        render json: ExerciseLog.all, status: :ok
    end

    def show 
        exercise_log = ExerciseLog.find_by(id: params[:id])
        if exercise_log
            render json: exercise_log, status: :ok
        else
            render json: {error: "No such exercise_log"},status: :not_found
        end
        
    end

    def update 
        exercise_log = ExerciseLog.find_by(id: params[:id])
        if exercise_log.update(log_params)
            render json: exercise_log
        else
            render json:{error:"Error in updating"},status: :unprocessable_entity
        end
    end

    def destroy
        exercise_log = ExerciseLog.find_by(id: params[:id])
        if exercise_log
            exercise_log.destroy
            head :no_content
        else 
        
            render json:{error:"Error not deleted"}, status: :unprocessable_entity
    end
end

    private
    def log_params
        params.permit(:user_id, :exercise_id, :duration, :date)
    end
end

