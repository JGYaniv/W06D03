# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Artwork.delete_all
ArtworkShare.delete_all

u1 = User.create!(username: "Jonathan1")
u2 = User.create!(username: "Jonathan2")
u3 = User.create!(username: "Jonathan3")
u4 = User.create!(username: "Jonathan4")

a1 = Artwork.create(name: "Moana Lisa", artist_id: u1.id, image_url: "https://i.imgur.com/F6Qyi.jpg")
a2 = Artwork.create(name: "Homer & Lisa", artist_id: u2.id, image_url: "https://i.imgur.com/5PBeByJ.png")

ArtworkShare.create(user_id: u1.id, artwork_id: a2.id)
ArtworkShare.create(user_id: u2.id, artwork_id: a1.id)
ArtworkShare.create(user_id: u3.id, artwork_id: a2.id)
ArtworkShare.create(user_id: u4.id, artwork_id: a1.id)
ArtworkShare.create(user_id: u1.id, artwork_id: a1.id)
ArtworkShare.create(user_id: u4.id, artwork_id: a2.id)