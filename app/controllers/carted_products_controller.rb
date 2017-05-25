class CartedProductsController < ApplicationController

  def index
    if current_user && current_user.cart.any?
     @carted_product = current_user.cart
   else
    flash[:warning] = "Add something to your cart"
    redirect_to '/'
   end
  end

  def create

    carted_product = CartedProduct.new(
                              user_id: current_user.id,
                              product_id: params[:product_id],
                              quantity: params[:quantity],
                              status: "carted"
                            )

   

     carted_products.save
     flash[:success] = "Item added to cart!"
    redirect_to "/carted_products"
    
  end


  def destroy
    carted_product = CartedProduct.find(params[:id])
    carted_product.update(status: "removed")
    flash[success] = "Item removed"
    redirect_to '/carted_products'
    
  end

end
