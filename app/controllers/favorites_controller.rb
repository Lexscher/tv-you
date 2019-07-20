class FavoritesController < ApplicationController
    before_action :find_favorite, only: [:show, :destroy]

    def index
        # if params[:search_term]
        #     @favorites = Favorite.where(name: params[:search_term])
        # else
        #     @favorites = Favorite.all
        # end
        @favorites = Favorite.all
    end
    
    def show
        current_tvshow
    end

    def new
        @favorite = Favorite.new
        current_tvshow
        current_user
    end

    def create
        #byebug
        current_user
        @favorite = Favorite.create(user_id: @user.id, tvshow_id: params[:id])
        if @favorite.valid?
            redirect_to user_path @favorite.user
        else
            flash[:errors] = @favorite.errors.full_messages
            redirect_to tvshows_path
        end
    end

    def destroy
        @favorite.destroy
        redirect_to tvshows_path
    end

    private

    # def search_and_destroy_favorite

    # end 

    def find_favorite
        current_user
        @favorite = Favorite.find_by(user_id: @user.id)
    end

    def favorite_params
        #byebug
        params.require(:favorite).permit(:user_id, :tvshow_id)
    end

    def favorite_button
        current_user
        current_tvshow
        #byebug
    end 

    def current_user
        @user = User.find(session[:user_id])
    end 

    def current_tvshow
        #byebug
        #@tvshow = Tvshow.find(params[:id]
    end 

end