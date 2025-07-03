# Name: Marissa Abao
# Submission Date: July 4, 2025
# Course: WEBD-3011 Agile Full Stack Web Development
# Description: U5 - Rails, Faker, and Git Challenge
# This controller handles listing and displaying products.

class ProductsController < ApplicationController
  def index
    # Load all products into @products for the index view
    @products = Product.all
  end
end
