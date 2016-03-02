10.times do 
  Entry.create(name: Faker::Name.first_name)
end