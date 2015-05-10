require 'faker'
namespace :db do
  desc 'Drop, create, migrate, seed and populate sample data'
  task prepare: [:drop, :create, :migrate, :seed, :sample_data] do
    puts 'Ready to go!'
  end

  desc 'Populates the database with sample data'
  task sample_data: :environment do
    10.times do
      product = Product.create(
                 name: Faker::Commerce.product_name,
                 description: Faker::Lorem.paragraph,
                 price: Faker::Commerce.price
      )
      puts "Added #{product.name}"
    end
  end
end