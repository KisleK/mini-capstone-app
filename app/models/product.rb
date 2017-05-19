class Product < ApplicationRecord

  belongs_to :supplier
  has_many :images
  has_many :orders
  
  def friendly_updated_at
        updated_at.strftime("%b %d, %Y") 
  end

  def sale_message
      if discounted?
        "Discount Item"
      else
        "Everyday Value"
      end
    end


  def discounted?
     price < 150
  end


  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
