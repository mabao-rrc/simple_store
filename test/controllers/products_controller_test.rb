# Name: Marissa Abao
# Submission Date: July 4, 2025
# Course: WEBD-3011 Agile Full Stack Web Development
# Description: U5 - Rails, Faker, and Git Challenge
# This test checks that the products index and show pages load successfully.

require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    # Ensure there's a category + product for index (optional but safe)
    category = Category.create!(name: "Test Category")
    Product.create!(
      title: "Test Product",
      description: "Test Description",
      price: 9.99,
      stock_quantity: 10,
      category: category
    )

    get products_url
    assert_response :success
  end

  test "should get show" do
    category = Category.create!(name: "Test Category")
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
