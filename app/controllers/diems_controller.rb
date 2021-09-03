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
                @venues = Venue.all
                @event = @user.events.build
            else 
                redirect_to '/'
            end
    end



end
