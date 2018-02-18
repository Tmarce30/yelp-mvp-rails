puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'

categories = ["chinese", "italian", "japanese", "french", "belgian"]

restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  Faker::PhoneNumber.phone_number,
    category:      categories.sample
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  Faker::PhoneNumber.phone_number,
    category:      categories.sample
  },
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number:  Faker::PhoneNumber.phone_number,
    category:      categories.sample
  },
  {
    name:         "La Truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number:  Faker::PhoneNumber.phone_number,
    category:      categories.sample
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number:  Faker::PhoneNumber.phone_number,
    category:      categories.sample
  }
]

Restaurant.create!(restaurants_attributes)
10.times do Restaurant.create!(
  name:         Faker::Company.name,
  address:      "#{Faker::Address.street_address} #{Faker::Address.zip_code}
  #{Faker::Address.city}",
  phone_number: Faker::PhoneNumber.phone_number,
  category:     categories.sample
  )
end

puts 'Finished!'
