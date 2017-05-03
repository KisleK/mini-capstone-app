class ProductsController < ApplicationController
  
  def all_products
    @products = Product.all
    render 'all_products.html.erb'
  end

  def one_product
    @product = Product.first
        render 'one_product.html.erb'
  end

end
