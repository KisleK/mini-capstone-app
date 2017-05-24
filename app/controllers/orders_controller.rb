class OrdersController < ApplicationController

  def create
    items = CartedProduct.where(status: "carted")

    order = Order.new(
                      user_id: current_user.id,
                      subtotal: items.calculate_subtotal
                      )

    order.calculate_subtotal
    order.calculate_tax
    order.calculate_total
    
    order.save
    
    redirect_to "/orders/#{order.id}"
  

  end

  def show
    @order = Order.find(params[:id])
    # above is same as below just short
    # order_id = params[:id]
    # @order = Order.find_by(id: order_id)
  end
end
