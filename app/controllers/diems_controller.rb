class DiemsController < ApplicationController

    def index
      #  raise.params.inspect
      if logged_in?
            @user = User.find_by(id: current_user.id)
            @diems = @user.diems
        else 
            redirect_to '/'
        end
    end
    
    
    def new
       @user = current_user if logged_in?
            if !!@user
                @diems = @user.diems.build
            else 
                redirect_to '/'
            end
    end

    def create
        @user = current_user if logged_in?
            if !!@user
                @diem = @user.diems.build(diem_params)
     
                if @diem.save
                    redirect_to diem_path(@diem)
                else 
                     @errors = @diem.errors
                    render :'diems/new'
                end
            end
    end

    def show
        @user = current_user if !!current_user
        if !!@user 
            @info = @user.diems.find_by(:id[params[:id]])
        else 
            redirect_to '/'
        end
    end


    private

    def diem_params
        params.require(:diem).permit(:custdate, :moonsign, :moonstat)
    end


end
