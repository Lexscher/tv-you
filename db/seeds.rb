# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jack = User.create(name: "Jack Bean", username: "jack101")
jess = User.create(name: "Jessica Bean", username: "jess101")

fake_show = Tvshow.create(name: "clickbait", overview: "YOU'VE NEVER SEEN THIS BEFORE!!")

fav1 = Favorite.create(user_id: 1, tvshow_id: 1)