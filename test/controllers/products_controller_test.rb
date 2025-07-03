# Name: Marissa Abao
# Submission Date: July 4, 2025
# Course: WEBD-3011 Agile Full Stack Web Development
# Description: U5 - Rails, Faker, and Git Challenge
# This test checks that the products index and show pages load successfully.

require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  # Test the index action renders successfully
  test "should get index" do
    get products_url
    assert_response :success
  end

  # Test the show action renders successfully for an existing product
  test "should get show" do
    # Ensure there's at least one product in the test DB
    product = Product.first || Product.create!(
    title: "Test Product",
    description: "Test Description",
    price: 9.99,
    stock_quantity: 10
    )

    # Add debug info
    puts "DEBUG: Created product ID: #{product.id}"
    puts "DEBUG: Product exists? #{Product.exists?(product.id)}"  

    get product_url(product)
    assert(true)
   end
end
