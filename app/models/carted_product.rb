class CartedProduct < ApplicationRecord

  belongs_to :user
  belongs_to :product
  belongs_to :order, optional: true

  validates :quantity, presence: true
  validates :quantity, numercality: { greater_than: 0 }
  # or 
  # validates :quantity, length: { minimum: 1 }

  def subtotal
    product.price * quantity
    
  end
end
