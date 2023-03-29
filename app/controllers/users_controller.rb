class UsersController < ApplicationController

    def index 
        user = User.create!(user_params)
        render json: user
    end

    def show 
       user = User.find(params[:id])
       render json: user
    end

    def update 
        user =User.find(params[:id])
        user.update!(user_params)
    end
    
    
    
    private 

    def user_params 
        params.permit(:user_name, :full_name, :password, :email)
    end

end
