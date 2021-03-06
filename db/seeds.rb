# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(email: 'admin@curtainly.com', password: 'password', password_confirmation: 'password')
SocialLink.create(instagram_url: '#', facebook_url: '#', telephone: '090909090')
Subheader.create(testimonials: "What customers have to say about Curtainly",
  about_us: "Finest Curtains and Roman Blinds",
  contact_us: "Send a message to us"
)
AboutUs.create(text: "about us text goes here")
