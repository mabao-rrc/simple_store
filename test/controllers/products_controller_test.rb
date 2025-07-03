# Name: Marissa Abao
# Submission Date: July 4, 2025
# Course: WEBD-3011 Agile Full Stack Web Development
# Description: U5 - Rails, Faker, and Git Challenge
# This test checks that the products index and show pages load successfully.

# test/controllers/products_controller_test.rb
require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get show" do
    # Create a category for the product
    category = Category.create!(name: "Test Category")

    # Create a product linked to that category
    product = Product.create!(
      title: "Test Product",
      description: "Test Description",
      price: 9.99,
      stock_quantity: 10,
      category: category
    )

    get product_url(product)
    assert_response :success
  end
end

