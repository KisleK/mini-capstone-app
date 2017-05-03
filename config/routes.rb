Rails.application.routes.draw do
  get '/all' => 'products#all_products'
  get '/product' => 'products#one_product'
end
