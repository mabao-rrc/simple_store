# Name: Marissa Abao
# Submission Date: July 4, 2025
# Course: WEBD-3011 Agile Full Stack Web Development
# Description: U5 - Rails, Faker, and Git Challenge
# This file defines the routes for the Products controller.

Rails.application.routes.draw do
  # RESTful routes for products (includes index, show, etc.)
  resources :products, only: [ :index, :show ]

  # You can add other routes here as needed
end
