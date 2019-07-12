class TvshowsController < ApplicationController
    before_action :check_user, only: [:index, :show]
    

    def index
        @page = params[:page]
        if @page
            @max = @page.to_i * 21
            @min = @max - 21
            @tvshows = Tvshow.where("id >= #{@min} and id <= #{@max}")
        else
            @tvshows = Tvshow.where("id <= 21")
        end
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
