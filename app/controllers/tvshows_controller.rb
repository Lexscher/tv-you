class TvshowsController < ApplicationController
    before_action :check_user, only: [:index, :show]
    

    def index
        if params[:search_term]
            #@tvshows = Tvshow.where(name: params[:search_term])
            @tvshows = Tvshow.where("name like ?", "%#{params[:search_term]}%")
        else
            @tvshows = Tvshow.all
        end
        
        #@tvshows = Tvshow.search(params[:search])

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

    # def tvshow_params
    #     params.require(:tvshow).permit(
    #     :name, 
    #     :overview,  
    #     :original_name, 
    #     :popularity,  
    #     :first_air_date, 
    #     :backdrop_path, 
    #     :poster_path
    #     )
    # end 
    
    # name:, 
    # overview:,  
    # original_name:, 
    # popularity:,  
    # first_air_date:, 
    # backdrop_path:, 
    # poster_path:

end
