puts "Cleaning database"
Restaurant.destroy_all

puts "Creating 20 restaurants..."
20.times do 
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    rating: rand(1..5),
    chef_name: Faker::GreekPhilosophers.name
  )
end

puts "Done!"