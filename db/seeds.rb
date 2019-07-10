# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jack = User.create(name: "Jack Bean", username: "jack101")
jess = User.create(name: "Jessica Bean", username: "jess101")
mike = User.create(name: "Mike Wazowski", username: "mike101")

fake_show1 = Tvshow.create(name: "clickbait", overview: "YOU'VE NEVER SEEN THIS BEFORE!!")
fake_show2 = Tvshow.create(name: "The Vlogs", overview: "each episode is 4 minutes and 20 seconds long.")
fake_show3 = Tvshow.create(name: "Moneyzzz", overview: "Learn how to get rich quick!")
fake_show4 = Tvshow.create(name: "Chop Town", overview: "Learn how to chop 'em up and cook 'em down!")

fav1 = Favorite.create(user_id: 1, tvshow_id: 1)
fav2 = Favorite.create(user_id: 1, tvshow_id: 2)