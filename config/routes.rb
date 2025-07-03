# Name: Marissa Abao
# Submission Date: July 4, 2025
# Course: WEBD-3011 Agile Full Stack Web Development
# Description: U5 - Rails, Faker, and Git Challenge
# This file defines the routes, including the /products route for listing products.

Rails.application.routes.draw do
  # Route /products to the products#index action
  get "/products", to: "products#index"

  # You can set root if desired:
  # root "products#index"
end
