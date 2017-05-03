class ProductsController < ApplicationController
  def all_products

    render beanie_babies.html.erb
end
