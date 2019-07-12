require 'net/http'
require 'open-uri'
require 'json'


class Tvshow < ApplicationRecord
    has_many :favorites
    has_many :users, through: :favorites

    def self.get_popular_shows(page_number)
        url = "https://api.themoviedb.org/3/tv/popular?api_key=#{ENV['TMDB_API_KEY']}&page=#{page_number}"
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        JSON.parse(response.body)
    end

    def find_favorite(user)
       user.favorites.find_by(tvshow_id: self.id)
    end

    def self.search(search)
        if search
            tvshow = Tvshow.find_by(name: search)
            if tvshow 
                self.where(tvshow_id: tvshow)
            else
                Tvshow.all
            end
        else 
            Tvshow.all
        end 
    end 
    
    # page1 = Tvshow.get_popular_shows(1)
    # page1["results"].count => 20

    # page1["results"][0]
    # page1["results"][0]["original_name"] => "See No Evil: The Moors Murders"
    # page1["results"][0]["name"] => "See No Evil: The Moors Murders" NAME
    # page1["results"][0]["genre_ids"] => [18]                        GENRE
    # page1["results"][0]["popularity"] => 500.623                    POPULARITY
    # page1["results"][0]["origin_country"] => ["GB"]
    # page1["results"][0]["vote_count"] => 8
    # page1["results"][0]["first_air_date"] => "2006-05-14"           FIRST AIR DATE
    # page1["results"][0]["backdrop_path"] => "/7AKhSfJHnVi0zXQS4eJirHDs22p.jpg"     BACKDROP
    # page1["results"][0]["original_language"] => "en"
    # page1["results"][0]["id"] => 11634
    # page1["results"][0]["vote_average"] => 6.6
    # page1["results"][0]["overview"] =>"The dramatisation of one of the most notorious killing sprees in British history."  OVERVIEW
    # page1["results"][0]["poster_path"] =>"/b71BaRjp9TwxUZodLGgSRIlkfL8.jpg"  POSTER
end
