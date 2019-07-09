class TvshowsController < ApplicationController
    before_action :find_tvshow, only: [:show]
    

    def index
        @tvshows = Tvshow.all
    end

    def show
    end

    private

    def find_tvshow
        @tvshow = Tvshow.find(params[:id])
    end

end
