Rails.application.routes.draw do
  get '/product_all' => 'products#all_products'
  get '/product_one' => 'products#one_product'
end
