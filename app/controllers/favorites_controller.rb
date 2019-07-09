class FavoritesController < ApplicationController
    before_action :find_favorite, only: [:show, :destroy]

    def index
        @favorites = Favorite.all
    end
    
    def show
    end

    def new
        @favorite = Favorite.new
    end

    def create
        @favorite = Favorite.create(favorite_params)
        if @favorite.valid?
            redirect_to favorite_path
        else
            flash[:errors] = @favorite.errors.full_messages
            redirect_to new_favorite_path
        end
    end

    def destroy

    end

    private

    def find_favorite
        @favorite = Favorite.find(params[:id])
    end

    def favorite_params
        params.require(:favorite).permit(:name, :overview)
    end
end
