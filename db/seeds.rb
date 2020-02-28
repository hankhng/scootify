# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroy all seeds"
Review.destroy_all
Booking.destroy_all
Scooter.destroy_all
User.destroy_all

SCOOTER = {
  brand: %w(Yamaha BMW Kawasaki Honda Suzuki KTM Ducati Aprilia Triumph),
  transmission: %w(manual automatic),
  address: ["Av Niceto Vega #{rand(1..1000)}, Buenos Aires", "Av. Córdoba #{rand(1..1000)},CABA", "Av. del Libertador #{rand(1..1000)}, C1425 CABA", "Av. Antártida Argentina #{rand(1..1000)}, Buenos Aires", "Marcelo Torcuato de Alvear #{rand(1..1000)}, Buenos Aires", "Av. Santa Fe #{rand(1..1000)}, CABA", "#{rand(1..1000)} Bartolomé Mitre, CABA", "Av. Federico Lacroze #{rand(1..1000)}, Buenos Aires", "Av. Luis María Campos #{rand(1..1000)}, CABA", "Acevedo 865, Buenos Aires", "Murillo #{rand(1..1000)}, Buenos Aires", "Guardia Vieja #{rand(1..1000)}, Buenos Aires", "Paraguay #{rand(1..1000)}, CABA", "Guatemala #{rand(1..1000)}, CABA", "Malabia #{rand(1..1000)}, Buenos Aires", "Jorge Luis Borges #{rand(1..1000)}, CABA", "Thames #{rand(1..1000)}, Buenos Aires"]
}

MODEL = {
  Yamaha: %w(GT100 IT125 LS2 100 MG1T MX125 RX50 RD200),
  BMW: %w(K1200GT K1300R R75 R90S R100 R1100GS F650CS F800GT G310R G650GS),
  Kawasaki: %w(Z250SL Z250 Z750 Z800 Z1000 ZRX1200R ZZR250 ZZR400 ZZR600 ZZR1100),
  Honda: %w(CN250 Elite Express Joker Juno Motocompo Reflex PCX125 Ruckus SFX50),
  Suzuki: %w(DR125 DR200SE DR350 DR650 FM50 FR50 FR80 FX125 FXR150 FZ50),
  KTM: %w(50SXMini 65SX 390series 450EXC 450Rally 500EXC ),
  Ducati: %w(65TL 65TS 98 125T 125TV 400SS 748 749 750GT 750 800SS),
  Aprilia: %w(RS4125 RS50 RS125 RS250 RSV250 RST1000),
  Triumph: %w(80 100 T110 800 955i 1050 Cub Daytona Explore Trail),
}

LICENSE_TYPE = %w(A1 A2 A3)

USERS = {
  owners: [
    { first_name: "admin" , last_name: "admin", email: "admin@gmail.com" , password: 12345678, admin: true},
    { first_name: "Hernan" , last_name: "Kina", email: "hernan@gmail.com" , password: 12345678 },
    { first_name: "Thomas" , last_name: "Holder", email: "thomas@gmail.com" , password: 12345678 },
    { first_name: "Hank" , last_name: "Hng", email: "hank@gmail.com" , password: 12345678 },
    { first_name: "Joaco" , last_name: "Panelati", email: "joaco@gmail.com" , password: 12345678 },
    { first_name: "Morgan" , last_name: "Hare", email: "morgan@gmail.com" , password: 12345678 },
    { first_name: "Sebas" , last_name: "Sempe", email: "sebas@gmail.com" , password: 12345678 },
    { first_name: "Manuel" , last_name: "Scholz", email: "manuel@gmail.com" , password: 12345678 },
    { first_name: "Julius" , last_name: "Ahlert", email: "julius@gmail.com" , password: 12345678 },
    { first_name: "Analida" , last_name: "Corro", email: "analida@gmail.com" , password: 12345678 },
    { first_name: "Emilie" , last_name: "Drop", email: "emilie@gmail.com" , password: 12345678 },
  ],
  renters: [
    { first_name: "Ben" , last_name: "Deb", email: "ben@gmail.com" , password: 12345678 },
    { first_name: "Jose" , last_name: "Ignacio", email: "jose@gmail.com" , password: 12345678 },
    { first_name: "Xenia" , last_name: "Boula", email: "xenia@gmail.com" , password: 12345678 },
    { first_name: "Nico" , last_name: "Donoso", email: "nico@gmail.com" , password: 12345678 },
    { first_name: "Feli" , last_name: "Hernandez", email: "feli@gmail.com" , password: 12345678 },
    { first_name: "James" , last_name: "Loomos", email: "james@gmail.com" , password: 12345678 },
    { first_name: "Janette" , last_name: "Kwan", email: "janette@gmail.com" , password: 12345678 },
    { first_name: "Maximo" , last_name: "Chalbaud", email: "maximo@gmail.com" , password: 12345678 },
    { first_name: "Gerardo" , last_name: "Raiden", email: "gerardo@gmail.com" , password: 12345678 },
    { first_name: "Nicolas" , last_name: "Kennedy", email: "nicolas@gmail.com" , password: 12345678 },
  ]
}

REVIEWS = {
  comments: [
'Awesome scooter, the highlight of my trip!',
'Happy scooting-memories were made. Highly recommended!',
'Scooting at it should be, what a great day.',
'The owner was very friendly to explain me how to use the scooter.',
'Owner gave me some advice on what scenic routes to take when riding downtown.',
'Cool scooter, very well maintained.',
'The best way to discover a city.',
'Enjoyed the scoot around with my girlfriend.',
'A safe and unqiue way to explore downtown.',
'We had a great time scooting around!',
'Great scooting experience. Only things was low fuel.'
]
}

USERS[:renters].each do |renter|
  renter = User.create!(renter)
end


USERS[:owners].each do |owner_info|
  owner = User.create!(owner_info)

  2.times do
    scooter = Scooter.new()
    scooter.brand = SCOOTER[:brand].sample
    scooter.transmission = SCOOTER[:transmission].sample
    scooter.address = SCOOTER[:address].sample
    scooter.model = MODEL[scooter.brand.to_sym].sample
    scooter.license_type = LICENSE_TYPE.sample
    scooter.year = rand(2000..2020)
    scooter.price_per_day = rand(10..150)
    scooter.owner = owner
    file = URI.open("https://source.unsplash.com/1600x900/?scooter&#{scooter.brand}")
    scooter.photo.attach(io: file, filename: "#{rand(1..999)}.jpeg", content_type: 'image/png')
    scooter.save!



    4.times do
      review = Review.new()
      review.comment = REVIEWS[:comments].sample
      review.rating = rand(1..5)
      review.scooter = scooter
      review.renter_id = rand(User.first.id..User.last.id)
      review.save!
    end

    rand(3..5).times do
      # n = 0
      booking = Booking.new()
      if Booking.last.nil?
        start_date = Date.today + rand(-15..15).days
      elsif scooter == Booking.last.scooter
        start_date = Booking.last.end_date + rand(-15..15).days
      else
        start_date = Date.today + rand(-15..15).days
      end
      booking.start_date = start_date
      booking.end_date = booking.start_date + rand(-30..30).days
      booking.scooter = scooter
      # byebug
      booking.booking_price = scooter.price_per_day * TimeDifference.between(booking.start_date, booking.end_date).in_days
      # booking.booking_price = (booking.end_date - booking.start_date).to_i
      booking.renter = User.find_by(email: USERS[:renters].sample[:email])
      booking.save!
      # n += 1
      # puts "creating booking #{n}"
      # review = Review.new
      # review.booking = booking
      # review.comment = COMMENT.sample
    end
  end
end

puts "seeds succesfully"

