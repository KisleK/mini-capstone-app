class ProductsController < ApplicationController
  def all_products
    @product = Product.all
    render all_products.html.erb
  end
  def one_product
    @product = Product.last
        render one_product.html.erb

  end
end
