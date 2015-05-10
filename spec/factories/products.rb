FactoryGirl.define do
  factory :product do
    name { Faker::Faker::Commerce.product_name }
    description { Faker::Lorem.paragraph }
    price { Faker::Commerce.price }
  end

end
