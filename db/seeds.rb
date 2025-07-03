# Name: Marissa Abao
# Submission Date: July 2, 2025
# Course: WEBD-3011 Agile Full Stack Web Development
# Description: U5 - Rails, Faker, and Git Challenge
# This script populates the products table with 676 fake products using Faker.

require 'faker'

puts "🌱 Seeding products..."

# Clear out any existing products
Product.destroy_all

676.times do
  Product.create(
    title: Faker::Commerce.product_name,
    description: Faker::Lorem.paragraph(sentence_count: 2),
    price: Faker::Commerce.price(range: 1.0..100.0),
    stock_quantity: Faker::Number.within(range: 1..100)
  )
end

puts "✅ Done seeding 676 products!"
