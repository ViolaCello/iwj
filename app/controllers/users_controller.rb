class UsersController < ApplicationController

    def new
        @user = User.new
    end
    
    def create
       @user = User.create(user_params)
       if @user.valid?
            session[:user_id] = @user.id
            redirect_to user_path(@user)
      else 
        render :new
      end
    end
        
    def show
         @user = User.find_by(id: params[:id])
         redirect_to '/' if @user == nil
    end

    def edit
        
    end
    
private

def user_params
    params.require(:user).permit(:name, :email, :password, :rising)
end

end
