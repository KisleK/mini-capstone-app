class OrdersController < ApplicationController

  def create
    
    order = Order.new(
                      product_id: params[:product_id],
                      user_id: current_user.id,
                      quantity: params[:quantity]
                      
      )
    if order.save
    
      redirect_to "/orders/#{order.id}"
    end

  end

  def show
    order_id = params[:id]
    @order = Order.find_by(id: order_id)
  end
end
