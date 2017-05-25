class Order < ApplicationRecord
  belongs_to :product, optional: true
  belongs_to :user

  has_many :carted_products
  has_many :products, through: :carted_products


  def calculate_subtotal(list)
    subtotal = 0
    # list.each do |item|
    #    subtotal += item.product.price * item.quantity
    # end
     self.subtotal = subtotal
  end

  def calculate_tax
    self.tax = subtotal * 0.09
  end

  def calculate_total
   self.total = subtotal + tax
   
  end
end
