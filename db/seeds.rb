puts 'cleaning db'

Booking.destroy_all
Tree.destroy_all
User.destroy_all

puts 'creating Users Trees and Bookings'

hugo = User.create(email: 'hugo@email.com', last_name: 'Ferrand', first_name: 'Hugo', password: 'azerty')
sarah = User.create(email: 'sarah@outlook.com', last_name: 'Guillon', first_name: 'Sarah', password: 'bbbccc')
christiane = User.create(email: 'christiane@orange.fr', last_name: 'Bugel', first_name: 'christiane', password: 'fffgggg')
matthias = User.create(email: 'matthias@gmail.com', last_name: 'Seeburger', first_name: 'matthias', password: 'rrrttt')

puts 'User well generated'

hibisusdus = Tree.new(
  description: 'The best baobab I have ever seen and great location',
  price: 110,
  species: 'hibisusdus',
  street: 'main street',
  city: 'Le Cap',
  country: 'South Africa',
  rating: 4.5,
  user: hugo
)

adansonia = Tree.new(
  description: 'Biggest baobab of Brazil',
  price: 200,
  species: 'Adansonia',
  street: 'Rout square',
  city: 'Rio',
  country: 'Brazil',
  rating: 4,
  user: sarah
)

montane = Tree.new(
  description: 'Oldest baobad of Africa',
  price: 100,
  species: 'Montane',
  street: 'Avenue day',
  city: 'Dakar',
  country: 'Senegal',
  rating: 4.5,
  user: christiane
)

madagascariensis = Tree.new(
  description: 'unique baobab of Madagascar',
  price: 100,
  species: 'Madagascariensis',
  street: 'Streety street',
  city: 'Tananarive',
  country: 'Madagascar',
  rating: 3.5,
  user: matthias
)
hibisusdus.save
adansonia.save
montane.save
madagascariensis.save

puts 'Trees well generated'

# Booking.create(start_date: 2022-11-11, end_date: 2022-12-12, comment: 'Amazing this baobab, really really amazing', total_price: 120.20, status: 'Booked')

# For photos

require "open-uri"

file_hibisusdus = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645527029/baobabs/hibisusdus.jpg")
hibisusdus.photo.attach(io: file_hibisusdus, filename: 'nes.jpg', content_type: 'image/jpg')

file_adansonia = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645526946/baobabs/adansonia.jpg")
adansonia.photo.attach(io: file_adansonia, filename: 'nes.jpg', content_type: 'image/jpg')

file_montane = URI.open("http://res.cloudinary.com/dbitcpujz/image/upload/v1645527156/baobabs/montane.jpg")
montane.photo.attach(io: file_montane, filename: 'nes.jpg', content_type: 'image/jpg')

file_madagascariensis = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645537528/baobabs/madagascariensis.jpg")
madagascariensis.photo.attach(io: file_madagascariensis, filename: 'nes.jpg', content_type: 'image/jpg')

puts 'photos well generated'
