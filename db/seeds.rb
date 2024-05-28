# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Killer.destroy_all
User.destroy_all

puts "Create amigo imaginario"
user1 = User.create(first_name:"Amigo", last_name: "Imaginario", email: "imaginario@gmail.com", password:"123456")

puts "Creating killers..."

manuel = Killer.create(first_name: "Manuel", last_name: "Bessa", description: "Burglary it's his middle name. From young kids with a lollipop to an old lady walking on the streets with his wheel cart, he can steal anything quicker than a blink of an eye 😈", user_id: user1.id  )
puts "#{manuel.first_name} created"
jonas = Killer.create(first_name: "Jonas", last_name: "Wahl", description: "The best hacker in Portugal. With more than 20 years of experience, even Donald Trump will be afraid of having someone like this guy messing with him! 🤓💻", user_id: user1.id )
puts "#{jonas.first_name} created"

uzoma = Killer.create(first_name: "Uzoma", last_name: "Agha", description: "One of the most recognized criminals dealing with knifes and swords, ready for stabbing. Be careful... he can handle better than a ping-pong racket 🔪", user_id: user1.id )
puts "#{uzoma.first_name} created"

alexandru = Killer.create(first_name: "Alexandru", last_name: "Sandu", description: "Speciallist in arson. Didn't you ever think about putting fire to someone's property to feel better with yourself because he didn't pay what you owe? He can deal with gas, oil or even with a lighter he can provoke a big fire. KABOOOOOM!!! 🧨", user_id: user1.id )
puts "#{alexandru.first_name} created"

luc = Killer.create(first_name: "Luc", last_name: "Kelly", description: "Are you in some country and want someone to do a crime in another? Definitely you should hire this guy! 35 years of experience dealing with criminals around the world, specially Human Trafic. Mafia people are his best friends! 👴", user_id: user1.id )
puts "#{luc.first_name} created"

ariana = Killer.create(first_name: "Ariana", last_name: "Detroyes", description: "Money, money, money... who never thought about hiring a fraudster to avoid taxes? With her 15 years experience, you no longer need to worry about paying taxes! The governments will never know, so... why not hiring her? 💰💸", user_id: user1.id )
puts "#{ariana.first_name} created"

marco = Killer.create(first_name: "Marco", last_name: "Gomes", description: "A criminal against propreties masterpiece person. He can enter in any place without being heard without any problem! Silence and discretion are his mottos. He will not leave any fingerprint in any place 🥸", user_id: user1.id )
puts "#{marco.first_name} created"


puts "Finished!"
