class ApplicationController < ActionController::API
    include ActionController::Cookies

    configure do
        enable :cross_origin
      end

    def current_user
        @current_user = User.find_by(id: session[:user_id])
    end

    def authorize 
        return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
      end
end
