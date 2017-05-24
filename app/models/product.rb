class Product < ApplicationRecord

  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :carted_products
  has_many :users, through: :carted_products
  has_many :orders, through: :carted_products







  
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

  def stringify_categories
    categories.map { |category| category.name.titleize }.join(", ")
  end




end
