# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jack = User.create(name: "Jack Bean", username: "jack101", password: "abc123")
jess = User.create(name: "Jessica Bean", username: "jess101", password: "123456")
mike = User.create(name: "Mike Wazowski", username: "mike101", password: "password123")

# loop to call our api 100 times (The API is paginated) 
page_number = 1
while page_number < 100
    current_page = Tvshow.get_popular_shows(page_number)["results"]
    current_page.each{ |show| Tvshow.create(name: show["name"] , overview: show["overview"], original_name: show["original_name"], popularity: show["popularity"], first_air_date: show["first_air_date"], backdrop_path: show["backdrop_path"], poster_path: show["poster_path"] )}
    sleep(2)
    page_number += 1
end
puts "Seeded database with TV Shows from API."


fav1 = Favorite.create(user_id: 1, tvshow_id: 1)
fav2 = Favorite.create(user_id: 1, tvshow_id: 2)