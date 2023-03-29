class UsersController < ApplicationController

    def index 
        user = User.create(user_params)
        render json:user
    end

    
    private 

    def user_params 
        params.permit(:user_name, :full_name, :password, :email)
    end

end
