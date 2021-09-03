class SessionsController < ApplicationController

    def index
    end
    
    
    def create
        @user = User.find_by(email: params[:email])
        if @user && @user.authenticate(params[:password])
           session[:user_id] = @user.id
           redirect_to user_path(@user)
        else
          @error = "Login Failed"
          render :new
        end
     end
    
    def destroy
       session.clear
       @current_user = nil
       redirect_to '/'
    end
end    