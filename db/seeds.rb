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

user1 = User.create(
  first_name: "Amigo",
  last_name: "Imaginario",
  email: "imaginario@gmail.com",
  password: "123456"
)

puts "Creating killers..."

file1 = URI.open("https://photos.smugmug.com/C/EMPRESAS/LeWagon/n-Pmb29k/240514/i-7mfS6qh/0/FdkP6V8cNw5kZsrNvsgPvdTwb3XVMtdQ65GqVJjWx/X2/240514%20Le%20Wagon_008-X2.jpg")
file2 = URI.open("https://photos.smugmug.com/C/EMPRESAS/LeWagon/n-Pmb29k/240514/i-M9jCtMW/0/C6tVtjCJCMJL2zr5SPPjmWS3B7ngBrD3QXr79kcSV/X2/240514%20Le%20Wagon_023-X2.jpg")
file3 = URI.open("https://photos.smugmug.com/C/EMPRESAS/LeWagon/n-Pmb29k/240514/i-Nt7RTPj/0/FNsqcnLTNPdfFk3p2xhh6hKBjvvQhggrwLwfd774j/X2/240514%20Le%20Wagon_028-X2.jpg")
file4 = URI.open("https://photos.smugmug.com/C/EMPRESAS/LeWagon/n-Pmb29k/240514/i-9j5MDLc/0/tzzFZfgbqZXRjLVs9SLB5LnGSxhxKr3CGCPwpFZZ/X2/240514%20Le%20Wagon_056-X2.jpg")
file5 = URI.open("https://photos.smugmug.com/C/EMPRESAS/LeWagon/n-Pmb29k/240514/i-k8SQ6wp/0/CJX4bNrBv2QSLFtRND2wrqfN2PdLKFFkP8XXtfVdB/X2/240514%20Le%20Wagon_039-X2.jpg")
file6 = URI.open("https://photos.smugmug.com/C/EMPRESAS/LeWagon/n-Pmb29k/240514/i-VLnpgFL/0/FWkZ9QZRGq6QvJ6JfddsVhXRVRv87tVC7Fkf6VCr4/X2/240514%20Le%20Wagon_044-X2.jpg")
file7 = URI.open("https://photos.smugmug.com/C/EMPRESAS/LeWagon/n-Pmb29k/240514/i-925HZ74/0/p6Zdft8FxGgTB7HhDKqqX3skKjCXHPTPB3J4fJ39/X2/240514%20Le%20Wagon_035-X2.jpg")

manuel = Killer.create(
  first_name: "Manuel",
  last_name: "Bessa",
  description: "Burglary it's his middle name. From young kids with a lollipop to an old lady walking on the streets with his wheel cart, he can steal anything quicker than a blink of an eye 😉 🐶",
  specialty: "Burglary",
  user_id: user1.id
)
manuel.photos.attach(
  io: file1,
  filename: "manuel.jpg",
  content_type: "image/jpg"
)
puts "#{manuel.first_name} created"

jonas = Killer.create(
  first_name: "Jonas",
  last_name: "Wahl",
  description: "The best hacker in Portugal. With more than 20 years of experience, even Donald Trump will be afraid of having someone like this guy messing with him! 💻",
  specialty: "Burglary",
  user_id: user1.id
)
jonas.photos.attach(
  io: file2,
  filename: "jonas.jpg",
  content_type: "image/jpg"
)
puts "#{jonas.first_name} created"

uzoma = Killer.create(
  first_name: "Uzoma",
  last_name: "Agha",
  description: "One of the most recognized criminals dealing with knifes and swords, ready for stabbing. Be careful... he can handle better than a ping-pong racket 🔪🏓",
  specialty: "Killing",
  user_id: user1.id
)
uzoma.photos.attach(
  io: file3,
  filename: "uzoma.jpg",
  content_type: "image/jpg"
)
puts "#{uzoma.first_name} created"

alexandru = Killer.create(
  first_name: "Alexandru",
  last_name: "Sandu",
  description: "Speciallist in arson. Didn't you ever think about putting fire to someone's property to feel better with yourself because he didn't pay what you owe? He can deal with gas, oil or even with a lighter he can provoke a big fire. KABOOOOOM!!! 💥🔥",
  specialty: "Arson",
  user_id: user1.id
)
alexandru.photos.attach(
  io: file4,
  filename: "alexandru.jpg",
  content_type: "image/jpg"
)
puts "#{alexandru.first_name} created"

luc = Killer.create(
  first_name: "Luc",
  last_name: "Kelly",
  description: "Are you in some country and want someone to do a crime in another? Definitely you should hire this guy! 35 years of experience dealing with criminals around the world, specially Human Trafic. Mafia people are his best friends! 🌍",
  specialty: "Organized crime",
  user_id: user1.id
)
luc.photos.attach(
  io: file5,
  filename: "luc.jpg",
  content_type: "image/jpg"
)
puts "#{luc.first_name} created"

ariana = Killer.create(
  first_name: "Ariana",
  last_name: "Detroyes",
  description: "Money, money, money... who never thought about hiring a fraudster to avoid taxes? With her 15 years experience, you no longer need to worry about paying taxes! The governments will never know, so... why not hiring her? 💸💰",
  specialty: "Hacking",
  user_id: user1.id
)
ariana.photos.attach(
  io: file6,
  filename: "ariana.jpg",
  content_type: "image/jpg"
)
puts "#{ariana.first_name} created"

marco = Killer.create(
  first_name: "Marco",
  last_name: "Gomes",
  description: "A criminal against propreties masterpiece person. He can enter in any place without being heard without any problem! Silence and discretion are his mottos. He will not leave any fingerprint in any place 🥷🏿🏠",
  specialty: "Hacking",
  user_id: user1.id
)
marco.photos.attach(
  io: file7,
  filename: "marco.jpg",
  content_type: "image/jpg"
)
puts "#{marco.first_name} created"

puts "Finished!"
