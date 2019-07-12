class TvshowsController < ApplicationController
    before_action :check_user, only: [:index, :show]
    

    def index
        @tvshows = Tvshow.all
    end

    def show
        find_tvshow
    end

    private

    def find_tvshow
        @tvshow = Tvshow.find(params[:id])
    end

    # def current_user
    #     @user = User.find(session[:user_id])
    # end 
    
    def current_user
        # if !!session[:user_id]
            @user = User.find(session[:user_id])
        # end
    end 

    def check_user
        if !current_user
            redirect_to login_path
        else
            current_user
        end 
    end 

end
