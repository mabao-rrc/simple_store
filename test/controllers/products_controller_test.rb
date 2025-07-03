# Name: Marissa Abao
# Submission Date: July 4, 2025
# Course: WEBD-3011 Agile Full Stack Web Development
# Description: U5 - Rails, Faker, and Git Challenge
# This test checks that the products index page loads successfully.

require "test_helper"

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get show" do
    product = Product.first || Product.create(title: "Test", price: 1.0, stock_quantity: 1)
    get product_url(product)
    assert_response :success
  end
end
