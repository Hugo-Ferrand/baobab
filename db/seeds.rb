puts 'Cleaning db'

Booking.destroy_all
Tree.destroy_all
User.destroy_all

puts 'Creating Users Trees and Bookings'

hugo = User.create(email: 'hugo@email.com', last_name: 'Ferrand', first_name: 'Hugo', password: 'azerty')
sarah = User.create(email: 'sarah@outlook.com', last_name: 'Guillon', first_name: 'Sarah', password: 'aaaaaa')
christiane = User.create(email: 'christiane@orange.fr', last_name: 'Bugel', first_name: 'christiane', password: 'bbbbbb')
matthias = User.create(email: 'matthias@gmail.com', last_name: 'Seeburger', first_name: 'matthias', password: 'cccccc')
luc = User.create(email: 'luc@yahoo.com', last_name: 'Gulo', first_name: 'Luc', password: 'dddddd')
sophie = User.create(email: 'sophie@free.com', last_name: 'Mareau', first_name: 'Sophie', password: 'eeeeee')
paul = User.create(email: 'paul@sfr.fr', last_name: 'Pouert', first_name: 'Paul', password: 'ffffff')
pierre = User.create(email: 'pierreLS96@gmail.com', last_name: 'Array', first_name: 'Pierre', password: 'gggggg')
nicolas = User.create(email: 'nicolasweb@gmail.com', last_name: 'Deluf', first_name: 'Nicolas', password: 'hhhhhh')
anna = User.create(email: 'anna_34@outlook.com', last_name: 'Tiro', first_name: 'Anna', password: 'iiiiii')
julie = User.create(email: 'julieRTO@orange.fr', last_name: 'Jurst', first_name: 'Julie', password: 'jjjjjj')
alix = User.create(email: 'alix98@orange.fr', last_name: 'Making', first_name: 'Alix', password: 'kkkkkk')

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

ululus = Tree.new(
  description: 'What a plaisir to see the wild in a so good shape',
  price: 90,
  species: 'ululus',
  street: 'King II',
  city: 'Brazzaville',
  country: 'Congo',
  rating: 4,
  user: luc
)

francus = Tree.new(
  description: 'Huge tree which is impressive - next to the BAOBAB Museum',
  price: 220,
  species: 'francus',
  street: '10 Pass. de la Poule Noire',
  city: 'Nantes',
  country: 'France',
  rating: 4.2,
  user: sophie
)

magnitudus = Tree.new(
  description: 'What a shame, the baobab has been destroyed by a strom',
  price: 30,
  species: 'magnitudus',
  street: 'Kero rudas',
  city: 'Quito',
  country: 'Equator',
  rating: 3,
  user: paul
)

greenpandus = Tree.new(
  description: 'green and very beautifull baobab - ideal to show to your child',
  price: 166,
  species: 'greenpandus',
  street: 'Rue du près',
  city: 'Nairobi',
  country: 'Kenya',
  rating: 5,
  user: pierre
)

phyllostachys = Tree.new(
  description: 'impossible to pronounce the species but still interestant to see',
  price: 123,
  species: 'Phyllostachys',
  street: 'Square of the great baobab',
  city: 'baobab city',
  country: 'Baobab land',
  rating: 4.3,
  user: nicolas
)

riviereorum = Tree.new(
  description: 'warning ! dangerous baobab, close to the torrent river',
  price: 72,
  species: 'Riviereorum',
  street: 'Riveriera dela rivier',
  city: 'Madrid',
  country: 'Spain',
  rating: 3.1,
  user: anna
)

enervados = Tree.new(
  description: 'Sehr schöner prächtiger Baum, der schönste, den ich in meinem Leben gesehen habe',
  price: 320,
  species: 'enervados',
  street: 'berliner strasse',
  city: 'Berlin',
  country: 'Deutschland',
  rating: 3.7,
  user: julie
)

chillus = Tree.new(
  description: 'meilleur baobab pour une aprem baobab, je ne peux que recommander',
  price: 120,
  species: 'chillus',
  street: 'Rue de la paix',
  city: 'Vannes',
  country: 'France',
  rating: 5,
  user: alix
)

hibisusdus.save
adansonia.save
montane.save
madagascariensis.save
ululus.save
francus.save
magnitudus.save
greenpandus.save
phyllostachys.save
riviereorum.save
enervados.save
chillus.save

puts 'Trees well generated'

# Booking.create(start_date: 2022-11-11, end_date: 2022-12-12, comment: 'Amazing this baobab, really really amazing', total_price: 120.20, status: 'Booked')

# For photos

require "open-uri"

file_hibisusdus = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645527029/baobabs/Trees/hibisusdus.jpg")
hibisusdus.photo.attach(io: file_hibisusdus, filename: 'nes.jpg', content_type: 'image/jpg')

file_adansonia = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645526946/baobabs/Trees/adansonia.jpg")
adansonia.photo.attach(io: file_adansonia, filename: 'nes.jpg', content_type: 'image/jpg')

file_montane = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645527156/baobabs/Trees/montane.jpg")
montane.photo.attach(io: file_montane, filename: 'nes.jpg', content_type: 'image/jpg')

file_madagascariensis = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645537528/baobabs/Trees/madagascariensis.jpg")
madagascariensis.photo.attach(io: file_madagascariensis, filename: 'nes.jpg', content_type: 'image/jpg')

file_ululus = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645548869/baobabs/Trees/ululus.jpg")
ululus.photo.attach(io: file_ululus, filename: 'nes.jpg', content_type: 'image/jpg')

file_francus = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645548925/baobabs/Trees/francus.jpg")
francus.photo.attach(io: file_francus, filename: 'nes.jpg', content_type: 'image/jpg')

file_magnitudus = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645548838/baobabs/Trees/magnitudus.jpg")
magnitudus.photo.attach(io: file_magnitudus, filename: 'nes.jpg', content_type: 'image/jpg')

file_greenpandus = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645548978/baobabs/Trees/greenpandus.jpg")
greenpandus.photo.attach(io: file_greenpandus, filename: 'nes.jpg', content_type: 'image/jpg')

file_phyllostachys = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645549009/baobabs/Trees/phyllostachys.jpg")
phyllostachys.photo.attach(io: file_phyllostachys, filename: 'nes.jpg', content_type: 'image/jpg')

file_riviereorum = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645549041/baobabs/Trees/riviereorum.jpg")
riviereorum.photo.attach(io: file_riviereorum, filename: 'nes.jpg', content_type: 'image/jpg')

file_enervados = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645549079/baobabs/Trees/enervados.jpg")
enervados.photo.attach(io: file_enervados, filename: 'nes.jpg', content_type: 'image/jpg')

file_chillus = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645549126/baobabs/Trees/chillus.jpg")
chillus.photo.attach(io: file_chillus, filename: 'nes.jpg', content_type: 'image/jpg')

puts 'Photos of baobabs well generated'

file_hugo = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645696077/baobabs/Users/hugo.jpg")
hugo.photo.attach(io: file_hugo, filename: 'nes.jpg', content_type: 'image/jpg')

file_sarah = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645697065/baobabs/Users/sarah.jpg")
sarah.photo.attach(io: file_sarah, filename: 'nes.jpg', content_type: 'image/jpg')

file_christiane = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645697049/baobabs/Users/christiane.jpg")
christiane.photo.attach(io: file_christiane, filename: 'nes.jpg', content_type: 'image/jpg')

file_matthias = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645697041/baobabs/Users/matthias.jpg")
matthias.photo.attach(io: file_matthias, filename: 'nes.jpg', content_type: 'image/jpg')

file_luc = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645697134/baobabs/Users/luc.jpg")
luc.photo.attach(io: file_luc, filename: 'nes.jpg', content_type: 'image/jpg')

file_sophie = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645697144/baobabs/Users/sophie.jpg")
sophie.photo.attach(io: file_sophie, filename: 'nes.jpg', content_type: 'image/jpg')

file_paul = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645697332/baobabs/Users/paul.jpg")
paul.photo.attach(io: file_paul, filename: 'nes.jpg', content_type: 'image/jpg')

file_pierre = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645697332/baobabs/Users/pierre.jpg")
pierre.photo.attach(io: file_pierre, filename: 'nes.jpg', content_type: 'image/jpg')

file_nicolas = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645697332/baobabs/Users/nicolas.jpg")
nicolas.photo.attach(io: file_nicolas, filename: 'nes.jpg', content_type: 'image/jpg')

file_anna = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645697332/baobabs/Users/anna.jpg")
anna.photo.attach(io: file_anna, filename: 'nes.jpg', content_type: 'image/jpg')

file_julie = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645697332/baobabs/Users/julie.jpg")
julie.photo.attach(io: file_julie, filename: 'nes.jpg', content_type: 'image/jpg')

file_alix = URI.open("https://res.cloudinary.com/dbitcpujz/image/upload/v1645697332/baobabs/Users/alix.jpg")
alix.photo.attach(io: file_alix, filename: 'nes.jpg', content_type: 'image/jpg')

puts 'Photos of users well generated'
