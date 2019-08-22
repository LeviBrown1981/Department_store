Item.destroy_all

100.times do |index|
  Item.create(
    name: Faker::Games::SuperSmashBros.fighter,
50.times do |index|      
    price: Faker::Number.decimal_part(digits 4)
      
end
