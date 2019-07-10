class Tvshow < ApplicationRecord
    has_many :favorites
    has_many :users, through: :favorites

    def self.get_popular_shows(page_number)
        url = "https://api.themoviedb.org/3/tv/popular?api_key=#{TMDB_API_KEY}&query=anime&page=#{page_number}"

        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        JSON.parse(response.body)
    end
    
    # page1 = Tvshow.get_popular_shows(1)
    # page1["results"].count => 20
    # page1["results"][0]
    # page1["results"][0]["original_name"] => "See No Evil: The Moors Murders"
    # page1["results"][0]["name"] => "See No Evil: The Moors Murders"
    # page1["results"][0]["genre_ids"] => [18]
    # page1["results"][0]["popularity"] => 500.623
    # page1["results"][0]["origin_country"] => ["GB"]
    # page1["results"][0]["vote_count"] => 8
    # page1["results"][0]["first_air_date"] => "2006-05-14"
    # page1["results"][0]["backdrop_path"] => "/7AKhSfJHnVi0zXQS4eJirHDs22p.jpg"
    # page1["results"][0]["original_language"] => "en"
    # page1["results"][0]["id"] => 11634
    # page1["results"][0]["vote_average"] => 6.6
    # page1["results"][0]["overview"] =>"The dramatisation of one of the most notorious killing sprees in British history."
    # page1["results"][0]["poster_path"] =>"/b71BaRjp9TwxUZodLGgSRIlkfL8.jpg"
end
