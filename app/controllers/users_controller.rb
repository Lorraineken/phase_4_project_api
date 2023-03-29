class UsersController < ApplicationController

    def create 
        user = User.create!(user_params)
        render json: user
    end

    def index 
        user = User.all 
        render json: user
    end

    def show 
       user = User.find(params[:id])
       render json: user
    end

    
    private 

    def user_params 
        params.permit(:user_name, :full_name, :password, :email)
    end

end
