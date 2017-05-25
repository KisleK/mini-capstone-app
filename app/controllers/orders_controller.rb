class OrdersController < ApplicationController

  def create
    carted_products = current_user.cart
    subtotal = 0
    carted_products.each do |carted_product|
      subtotal += carted_product.product.price * carted_product.quantity
    end
    
    tax = subtotal *0.09
    total = subtotal + tax

    order = Order.new(
                      user_id: current_user.id,
                      subtotal: subtotal,
                      tax: ,
                      total:
                      )

    # order.calculate_subtotal(items)
    # order.calculate_tax
    # order.calculate_total
    
    order.save
    carted_products.update_all(status: "purchased", order_id: order.id)
    # carted_products.each do |carted_product|
    #   carted_product.update(status: "purchased")
    #   carted_product.update(order_id: order.id)
    # end
    
    redirect_to "/orders/#{order.id}"
  

  end

  def show
    @items = CartedProduct.where(order_id: params[:id])
    @order = Order.find(params[:id])
    # above is same as below just short
    # order_id = params[:id]
    # @order = Order.find_by(id: order_id)
  end
end
